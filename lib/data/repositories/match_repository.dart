import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/models.dart';
import '../../common/constants/app_constants.dart';
import 'base_repository.dart';

class MatchRepository extends BaseRepository<MatchPreferences> {
  @override
  String get collectionName => AppConstants.matchPreferencesCollection;

  @override
  MatchPreferences fromMap(Map<String, dynamic> map) {
    return MatchPreferences.fromJson(map);
  }

  @override
  Map<String, dynamic> toMap(MatchPreferences model) {
    return model.toJson();
  }

  @override
  Future<void> create(String id, MatchPreferences data) async {
    final docRef = getDocumentRef(id);
    final map = toMap(data);
    
    map['createdAt'] = FieldValue.serverTimestamp();
    map['updatedAt'] = FieldValue.serverTimestamp();
    
    await docRef.set(map);
  }

  @override
  Future<MatchPreferences?> read(String id) async {
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
  Future<List<MatchPreferences>> query({
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
  Stream<MatchPreferences?> watch(String id) {
    return getDocumentRef(id).snapshots().map((doc) {
      if (doc.exists) {
        return fromMap(doc.data()!);
      }
      return null;
    });
  }

  @override
  Stream<List<MatchPreferences>> watchQuery({
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

  // Specific Match Queries
  Future<List<MatchPreferences>> getPreferencesByMode(String mode) async {
    return query(queries: [
      (query) => query.where('mode', isEqualTo: mode),
    ]);
  }

  Future<List<MatchPreferences>> getPreferencesByCity(String city) async {
    return query(queries: [
      (query) => query.where('city', isEqualTo: city),
    ]);
  }

  Future<List<MatchPreferences>> getPreferencesByAgeRange(int minAge, int maxAge) async {
    return query(queries: [
      (query) => query.where('ageRangeMin', isLessThanOrEqualTo: maxAge),
      (query) => query.where('ageRangeMax', isGreaterThanOrEqualTo: minAge),
    ]);
  }

  // Add user to match queue
  Future<void> addToMatchQueue(String userId, MatchPreferences preferences) async {
    await create(userId, preferences);
  }

  // Remove user from match queue
  Future<void> removeFromMatchQueue(String userId) async {
    await delete(userId);
  }

  // Get potential matches for a user
  Future<List<MatchPreferences>> getPotentialMatches({
    required String mode,
    required String city,
    required int minAge,
    required int maxAge,
    required List<String> excludeUserIds,
  }) async {
    return query(
      queries: [
        (query) => query.where('mode', isEqualTo: mode),
        (query) => query.where('city', isEqualTo: city),
        (query) => query.where('ageRangeMin', isLessThanOrEqualTo: maxAge),
        (query) => query.where('ageRangeMax', isGreaterThanOrEqualTo: minAge),
        (query) => query.where(FieldPath.documentId, whereNotIn: excludeUserIds),
      ],
    );
  }
}
