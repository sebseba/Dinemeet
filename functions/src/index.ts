import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';

admin.initializeApp();

const db = admin.firestore();

// Match Queue Functions
export const onMatchQueueWrite = functions.firestore
  .document('matchQueue/{userId}')
  .onWrite(async (change, context) => {
    const userId = context.params.userId;
    
    if (!change.after.exists) {
      // User removed from queue
      console.log(`User ${userId} removed from match queue`);
      return;
    }
    
    const matchData = change.after.data();
    if (!matchData) return;
    
    console.log(`Processing match request for user ${userId}`);
    
    try {
      // TODO: Implement matching logic
      await processMatchRequest(userId, matchData);
    } catch (error) {
      console.error('Error processing match request:', error);
    }
  });

// Process match request
async function processMatchRequest(userId: string, matchData: any) {
  const { mode, city, ageRangeMin, ageRangeMax, mustHaveInterests } = matchData;
  
  // Get potential matches
  const potentialMatches = await getPotentialMatches(userId, {
    mode,
    city,
    ageRangeMin,
    ageRangeMax,
    mustHaveInterests,
  });
  
  if (potentialMatches.length === 0) {
    console.log(`No potential matches found for user ${userId}`);
    return;
  }
  
  // Create group based on mode
  const groupId = await createGroup(userId, potentialMatches, mode);
  
  // Create reservation
  await createReservation(groupId, city);
  
  // Send notifications
  await sendMatchNotifications(groupId, [...potentialMatches, userId]);
}

// Get potential matches
async function getPotentialMatches(
  userId: string,
  criteria: {
    mode: string;
    city: string;
    ageRangeMin: number;
    ageRangeMax: number;
    mustHaveInterests: string[];
  }
) {
  const { mode, city, ageRangeMin, ageRangeMax, mustHaveInterests } = criteria;
  
  // Calculate required participants based on mode
  const requiredParticipants = parseInt(mode.charAt(0)) * 2; // 1v1=2, 2v2=4, 3v3=6
  
  // Query for potential matches
  let query = db.collection('matchQueue')
    .where('mode', '==', mode)
    .where('city', '==', city)
    .where('ageRangeMin', '<=', ageRangeMax)
    .where('ageRangeMax', '>=', ageRangeMin);
  
  const snapshot = await query.get();
  
  const matches: string[] = [];
  for (const doc of snapshot.docs) {
    if (doc.id === userId) continue; // Skip self
    
    const data = doc.data();
    
    // Check interests overlap
    const interests = data.mustHaveInterests || [];
    const hasCommonInterests = mustHaveInterests.some(interest => 
      interests.includes(interest)
    );
    
    if (hasCommonInterests) {
      matches.push(doc.id);
      
      if (matches.length >= requiredParticipants - 1) {
        break;
      }
    }
  }
  
  return matches;
}

// Create group
async function createGroup(userId: string, participantIds: string[], mode: string) {
  const groupId = `group_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
  
  const groupData = {
    groupId,
    mode,
    participantUids: [userId, ...participantIds],
    status: 'pending',
    createdAt: admin.firestore.FieldValue.serverTimestamp(),
    updatedAt: admin.firestore.FieldValue.serverTimestamp(),
  };
  
  await db.collection('groups').doc(groupId).set(groupData);
  
  // Remove participants from queue
  const batch = db.batch();
  batch.delete(db.collection('matchQueue').doc(userId));
  participantIds.forEach(id => {
    batch.delete(db.collection('matchQueue').doc(id));
  });
  await batch.commit();
  
  return groupId;
}

// Create reservation
async function createReservation(groupId: string, city: string) {
  const resId = `res_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
  
  // Get dummy venue for the city
  const venue = await getDummyVenue(city);
  
  // Set reservation date to tomorrow at 19:00
  const tomorrow = new Date();
  tomorrow.setDate(tomorrow.getDate() + 1);
  tomorrow.setHours(19, 0, 0, 0);
  
  const reservationData = {
    resId,
    venueName: venue.name,
    venueArea: venue.area,
    date: tomorrow,
    time: '19:00-21:00',
    groupId,
    status: 'proposed',
    createdAt: admin.firestore.FieldValue.serverTimestamp(),
    updatedAt: admin.firestore.FieldValue.serverTimestamp(),
  };
  
  await db.collection('reservations').doc(resId).set(reservationData);
  
  // Update group with reservation reference
  await db.collection('groups').doc(groupId).update({
    reservationRef: resId,
    updatedAt: admin.firestore.FieldValue.serverTimestamp(),
  });
}

// Get dummy venue
async function getDummyVenue(city: string) {
  // For now, return a dummy venue
  // TODO: Implement venue selection logic
  return {
    name: 'Mekan A',
    area: 'Kadıköy',
  };
}

// Send match notifications
async function sendMatchNotifications(groupId: string, participantIds: string[]) {
  // TODO: Implement FCM notifications
  console.log(`Sending match notifications to participants: ${participantIds.join(', ')}`);
  
  // For now, just log the notification
  participantIds.forEach(userId => {
    console.log(`Notification sent to user ${userId}: New match found! Group: ${groupId}`);
  });
}

// Finalize reservation (when all participants confirm)
export const finalizeReservation = functions.firestore
  .document('groups/{groupId}')
  .onUpdate(async (change, context) => {
    const groupId = context.params.groupId;
    const before = change.before.data();
    const after = change.after.data();
    
    if (before.status === 'pending' && after.status === 'confirmed') {
      console.log(`Finalizing reservation for group ${groupId}`);
      
      try {
        // Update reservation status to locked
        const reservationRef = after.reservationRef;
        if (reservationRef) {
          await db.collection('reservations').doc(reservationRef).update({
            status: 'locked',
            updatedAt: admin.firestore.FieldValue.serverTimestamp(),
          });
        }
        
        // Send confirmation notifications
        await sendConfirmationNotifications(groupId, after.participantUids);
      } catch (error) {
        console.error('Error finalizing reservation:', error);
      }
    }
  });

// Send confirmation notifications
async function sendConfirmationNotifications(groupId: string, participantIds: string[]) {
  // TODO: Implement FCM notifications
  console.log(`Sending confirmation notifications to participants: ${participantIds.join(', ')}`);
  
  participantIds.forEach(userId => {
    console.log(`Confirmation notification sent to user ${userId}: Reservation confirmed! Group: ${groupId}`);
  });
}

// Send survey reminders
export const sendSurveyReminders = functions.pubsub
  .schedule('every 1 hours')
  .onRun(async (context) => {
    console.log('Running survey reminder job');
    
    try {
      // Find completed groups without surveys
      const completedGroups = await db.collection('groups')
        .where('status', '==', 'completed')
        .get();
      
      for (const groupDoc of completedGroups.docs) {
        const groupData = groupDoc.data();
        const groupId = groupDoc.id;
        
        // Check if surveys exist for this group
        const surveys = await db.collection('surveys')
          .where('groupId', '==', groupId)
          .get();
        
        if (surveys.empty) {
          // Send reminder to participants
          await sendSurveyReminderNotifications(groupId, groupData.participantUids);
        }
      }
    } catch (error) {
      console.error('Error sending survey reminders:', error);
    }
  });

// Send survey reminder notifications
async function sendSurveyReminderNotifications(groupId: string, participantIds: string[]) {
  // TODO: Implement FCM notifications
  console.log(`Sending survey reminders to participants: ${participantIds.join(', ')}`);
  
  participantIds.forEach(userId => {
    console.log(`Survey reminder sent to user ${userId}: Please complete the survey for group ${groupId}`);
  });
}
