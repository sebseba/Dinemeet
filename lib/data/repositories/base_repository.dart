import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseRepository<T> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  FirebaseFirestore get firestore => _firestore;
  
  String get collectionName;
  
  // CRUD Operations
  Future<void> create(String id, T data);
  Future<T?> read(String id);
  Future<void> update(String id, Map<String, dynamic> data);
  Future<void> delete(String id);
  
  // Query Operations
  Future<List<T>> query({
    List<Query<dynamic> Function(Query<dynamic>)>? queries,
    int? limit,
  });
  
  // Stream Operations
  Stream<T?> watch(String id);
  Stream<List<T>> watchQuery({
    List<Query<dynamic> Function(Query<dynamic>)>? queries,
    int? limit,
  });
  
  // Helper Methods
  DocumentReference<Map<String, dynamic>> getDocumentRef(String id) {
    return _firestore.collection(collectionName).doc(id);
  }
  
  CollectionReference<Map<String, dynamic>> getCollectionRef() {
    return _firestore.collection(collectionName);
  }
  
  // Convert Map to Model
  T fromMap(Map<String, dynamic> map);
  
  // Convert Model to Map
  Map<String, dynamic> toMap(T model);
}
