import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/models.dart';
import '../../common/constants/app_constants.dart';
import 'base_repository.dart';

class UserRepository extends BaseRepository<AppUser> {
  @override
  String get collectionName => AppConstants.usersCollection;

  @override
  AppUser fromMap(Map<String, dynamic> map) {
    return AppUser.fromJson(map);
  }

  @override
  Map<String, dynamic> toMap(AppUser model) {
    return model.toJson();
  }

  @override
  Future<void> create(String id, AppUser data) async {
    final docRef = getDocumentRef(id);
    final map = toMap(data);
    
    // Add server timestamps
    map['createdAt'] = FieldValue.serverTimestamp();
    map['updatedAt'] = FieldValue.serverTimestamp();
    
    await docRef.set(map);
  }

  @override
  Future<AppUser?> read(String id) async {
    final doc = await getDocumentRef(id).get();
    if (doc.exists) {
      return fromMap(doc.data()!);
    }
    return null;
  }

  @override
  Future<void> update(String id, Map<String, dynamic> data) async {
    final docRef = getDocumentRef(id);
    
    // Add server timestamp
    data['updatedAt'] = FieldValue.serverTimestamp();
    
    await docRef.update(data);
  }

  @override
  Future<void> delete(String id) async {
    await getDocumentRef(id).delete();
  }

  @override
  Future<List<AppUser>> query({
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
  Stream<AppUser?> watch(String id) {
    return getDocumentRef(id).snapshots().map((doc) {
      if (doc.exists) {
        return fromMap(doc.data()!);
      }
      return null;
    });
  }

  @override
  Stream<List<AppUser>> watchQuery({
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

  // Specific User Queries
  Future<List<AppUser>> getUsersByCity(String city) async {
    return query(queries: [
      (query) => query.where('city', isEqualTo: city),
    ]);
  }

  Future<List<AppUser>> getUsersByInterests(List<String> interests) async {
    return query(queries: [
      (query) => query.where('interests', arrayContainsAny: interests),
    ]);
  }

  Future<List<AppUser>> getUsersByAgeRange(int minAge, int maxAge) async {
    return query(queries: [
      (query) => query.where('age', isGreaterThanOrEqualTo: minAge),
      (query) => query.where('age', isLessThanOrEqualTo: maxAge),
    ]);
  }

  Future<List<AppUser>> getUsersByGender(String gender) async {
    return query(queries: [
      (query) => query.where('gender', isEqualTo: gender),
    ]);
  }

  Future<List<AppUser>> getVerifiedUsers() async {
    return query(queries: [
      (query) => query.where('flags.verified', isEqualTo: true),
    ]);
  }

  Future<List<AppUser>> getNonBannedUsers() async {
    return query(queries: [
      (query) => query.where('flags.banned', isEqualTo: false),
    ]);
  }

  // Update User Rating
  Future<void> updateUserRating(String userId, double newRating) async {
    final user = await read(userId);
    if (user != null && user.ratings != null) {
      final currentAvg = user.ratings!.avg;
      final currentCount = user.ratings!.count;
      
      final newCount = currentCount + 1;
      final newAvg = ((currentAvg * currentCount) + newRating) / newCount;
      
      await update(userId, {
        'ratings.avg': newAvg,
        'ratings.count': newCount,
      });
    }
  }

  // Check if user exists
  Future<bool> userExists(String userId) async {
    final doc = await getDocumentRef(userId).get();
    return doc.exists;
  }

  // Get users for matching (with filters)
  Future<List<AppUser>> getUsersForMatching({
    required String mode,
    required int minAge,
    required int maxAge,
    required String city,
    required List<String> interests,
    required List<String> excludeUserIds,
    int limit = 10,
  }) async {
    return query(
      queries: [
        (query) => query.where('age', isGreaterThanOrEqualTo: minAge),
        (query) => query.where('age', isLessThanOrEqualTo: maxAge),
        (query) => query.where('city', isEqualTo: city),
        (query) => query.where('interests', arrayContainsAny: interests),
        (query) => query.where('flags.banned', isEqualTo: false),
        (query) => query.where(FieldPath.documentId, whereNotIn: excludeUserIds),
      ],
      limit: limit,
    );
  }
}
