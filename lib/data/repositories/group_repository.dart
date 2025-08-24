import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/models.dart';
import '../../common/constants/app_constants.dart';
import 'base_repository.dart';

class GroupRepository extends BaseRepository<Group> {
  @override
  String get collectionName => AppConstants.groupsCollection;

  @override
  Group fromMap(Map<String, dynamic> map) {
    return Group.fromJson(map);
  }

  @override
  Map<String, dynamic> toMap(Group model) {
    return model.toJson();
  }

  @override
  Future<void> create(String id, Group data) async {
    final docRef = getDocumentRef(id);
    final map = toMap(data);
    
    map['createdAt'] = FieldValue.serverTimestamp();
    map['updatedAt'] = FieldValue.serverTimestamp();
    
    await docRef.set(map);
  }

  @override
  Future<Group?> read(String id) async {
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
  Future<List<Group>> query({
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
  Stream<Group?> watch(String id) {
    return getDocumentRef(id).snapshots().map((doc) {
      if (doc.exists) {
        return fromMap(doc.data()!);
      }
      return null;
    });
  }

  @override
  Stream<List<Group>> watchQuery({
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

  // Specific Group Queries
  Future<List<Group>> getGroupsByUser(String userId) async {
    return query(queries: [
      (query) => query.where('participantUids', arrayContains: userId),
    ]);
  }

  Future<List<Group>> getGroupsByStatus(String status) async {
    return query(queries: [
      (query) => query.where('status', isEqualTo: status),
    ]);
  }

  Future<List<Group>> getGroupsByMode(String mode) async {
    return query(queries: [
      (query) => query.where('mode', isEqualTo: mode),
    ]);
  }

  Future<List<Group>> getActiveGroupsByUser(String userId) async {
    return query(queries: [
      (query) => query.where('participantUids', arrayContains: userId),
      (query) => query.where('status', whereIn: ['pending', 'confirmed']),
    ]);
  }

  // Create a new group
  Future<String> createGroup({
    required String mode,
    required List<String> participantUids,
    String? reservationRef,
  }) async {
    final groupId = _generateGroupId();
    final group = Group(
      groupId: groupId,
      mode: mode,
      participantUids: participantUids,
      status: 'pending',
      reservationRef: reservationRef,
    );
    
    await create(groupId, group);
    return groupId;
  }

  // Update group status
  Future<void> updateGroupStatus(String groupId, String status) async {
    await update(groupId, {'status': status});
  }

  // Add participant to group
  Future<void> addParticipant(String groupId, String userId) async {
    final group = await read(groupId);
    if (group != null) {
      final updatedParticipants = List<String>.from(group.participantUids);
      if (!updatedParticipants.contains(userId)) {
        updatedParticipants.add(userId);
        await update(groupId, {'participantUids': updatedParticipants});
      }
    }
  }

  // Remove participant from group
  Future<void> removeParticipant(String groupId, String userId) async {
    final group = await read(groupId);
    if (group != null) {
      final updatedParticipants = List<String>.from(group.participantUids);
      updatedParticipants.remove(userId);
      await update(groupId, {'participantUids': updatedParticipants});
    }
  }

  // Check if user is in group
  Future<bool> isUserInGroup(String groupId, String userId) async {
    final group = await read(groupId);
    return group?.participantUids.contains(userId) ?? false;
  }

  // Get groups that need confirmation (pending status)
  Future<List<Group>> getPendingGroups() async {
    return getGroupsByStatus('pending');
  }

  // Get completed groups for a user
  Future<List<Group>> getCompletedGroupsByUser(String userId) async {
    return query(queries: [
      (query) => query.where('participantUids', arrayContains: userId),
      (query) => query.where('status', isEqualTo: 'completed'),
    ]);
  }

  // Generate unique group ID
  String _generateGroupId() {
    return 'group_${DateTime.now().millisecondsSinceEpoch}_${(DateTime.now().microsecond % 1000).toString().padLeft(3, '0')}';
  }
}
