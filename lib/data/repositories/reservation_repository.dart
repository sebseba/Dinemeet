import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/models.dart';
import '../../common/constants/app_constants.dart';
import 'base_repository.dart';

class ReservationRepository extends BaseRepository<Reservation> {
  @override
  String get collectionName => AppConstants.reservationsCollection;

  @override
  Reservation fromMap(Map<String, dynamic> map) {
    return Reservation.fromJson(map);
  }

  @override
  Map<String, dynamic> toMap(Reservation model) {
    return model.toJson();
  }

  @override
  Future<void> create(String id, Reservation data) async {
    final docRef = getDocumentRef(id);
    final map = toMap(data);
    
    map['createdAt'] = FieldValue.serverTimestamp();
    map['updatedAt'] = FieldValue.serverTimestamp();
    
    await docRef.set(map);
  }

  @override
  Future<Reservation?> read(String id) async {
    final doc = await getDocumentRef(id).get();
    if (doc.exists) {
      return fromMap(doc.data()!);
    }
    return null;
  }

  @override
  Future<void> update(String id, Map<String, dynamic> data) async {
    final docRef = getDocumentRef(id);
    data['updatedAt'] = FieldValue.serverTimestamp();
    await docRef.update(data);
  }

  @override
  Future<void> delete(String id) async {
    await getDocumentRef(id).delete();
  }

  @override
  Future<List<Reservation>> query({
    List<Query<dynamic> Function(Query<dynamic>)>? queries,
    int? limit,
  }) async {
    Query<Map<String, dynamic>> query = getCollectionRef();
    
    if (queries != null) {
      for (final queryFn in queries) {
        query = queryFn(query) as Query<Map<String, dynamic>>;
      }
    }
    
    if (limit != null) {
      query = query.limit(limit);
    }
    
    final snapshot = await query.get();
    return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
  }

  @override
  Stream<Reservation?> watch(String id) {
    return getDocumentRef(id).snapshots().map((doc) {
      if (doc.exists) {
        return fromMap(doc.data()!);
      }
      return null;
    });
  }

  @override
  Stream<List<Reservation>> watchQuery({
    List<Query<dynamic> Function(Query<dynamic>)>? queries,
    int? limit,
  }) {
    Query<Map<String, dynamic>> query = getCollectionRef();
    
    if (queries != null) {
      for (final queryFn in queries) {
        query = queryFn(query) as Query<Map<String, dynamic>>;
      }
    }
    
    if (limit != null) {
      query = query.limit(limit);
    }
    
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
    });
  }

  // Specific Reservation Queries
  Future<List<Reservation>> getReservationsByGroup(String groupId) async {
    return query(queries: [
      (query) => query.where('groupId', isEqualTo: groupId),
    ]);
  }

  Future<List<Reservation>> getReservationsByStatus(String status) async {
    return query(queries: [
      (query) => query.where('status', isEqualTo: status),
    ]);
  }

  Future<List<Reservation>> getReservationsByDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    return query(queries: [
      (query) => query.where('date', isGreaterThanOrEqualTo: startOfDay),
      (query) => query.where('date', isLessThan: endOfDay),
    ]);
  }

  Future<List<Reservation>> getReservationsByVenue(String venueName) async {
    return query(queries: [
      (query) => query.where('venueName', isEqualTo: venueName),
    ]);
  }

  // Create a new reservation
  Future<String> createReservation({
    required String venueName,
    required String venueArea,
    required DateTime date,
    required String time,
    required String groupId,
    String? notes,
  }) async {
    final resId = _generateReservationId();
    final reservation = Reservation(
      resId: resId,
      venueName: venueName,
      venueArea: venueArea,
      date: date,
      time: time,
      groupId: groupId,
      notes: notes,
      status: 'proposed',
    );
    
    await create(resId, reservation);
    return resId;
  }

  // Update reservation status
  Future<void> updateReservationStatus(String resId, String status) async {
    await update(resId, {'status': status});
  }

  // Lock reservation (confirm)
  Future<void> lockReservation(String resId) async {
    await updateReservationStatus(resId, 'locked');
  }

  // Cancel reservation
  Future<void> cancelReservation(String resId) async {
    await updateReservationStatus(resId, 'cancelled');
  }

  // Get proposed reservations (need confirmation)
  Future<List<Reservation>> getProposedReservations() async {
    return getReservationsByStatus('proposed');
  }

  // Get confirmed reservations for a group
  Future<List<Reservation>> getConfirmedReservationsByGroup(String groupId) async {
    return query(queries: [
      (query) => query.where('groupId', isEqualTo: groupId),
      (query) => query.where('status', isEqualTo: 'locked'),
    ]);
  }

  // Get upcoming reservations for a user (via group)
  Future<List<Reservation>> getUpcomingReservationsForUser(String userId) async {
    // This would need to be implemented with a join query
    // For now, we'll return empty list and implement this later
    return [];
  }

  // Check if venue is available at given time
  Future<bool> isVenueAvailable(String venueName, DateTime date, String time) async {
    final reservations = await query(queries: [
      (query) => query.where('venueName', isEqualTo: venueName),
      (query) => query.where('date', isEqualTo: date),
      (query) => query.where('time', isEqualTo: time),
      (query) => query.where('status', whereIn: ['proposed', 'locked']),
    ]);
    
    return reservations.isEmpty;
  }

  // Get reservations by date range
  Future<List<Reservation>> getReservationsByDateRange(DateTime startDate, DateTime endDate) async {
    return query(queries: [
      (query) => query.where('date', isGreaterThanOrEqualTo: startDate),
      (query) => query.where('date', isLessThanOrEqualTo: endDate),
    ]);
  }

  // Generate unique reservation ID
  String _generateReservationId() {
    return 'res_${DateTime.now().millisecondsSinceEpoch}_${(DateTime.now().microsecond % 1000).toString().padLeft(3, '0')}';
  }
}
