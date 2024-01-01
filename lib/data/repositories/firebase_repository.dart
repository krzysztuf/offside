import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/data/repositories/firebase_collection.dart';
import 'package:offside/domain/entities/user.dart';

class FirebaseRepository extends FirebaseCollection<User> {
  FirebaseRepository(super.collectionName);

  @override
  Future<void> add(User item) {
    throw UnimplementedError();
  }

  @override
  Future<List<User>> all() async {
    final users = await collection.get();
    return users.docs.map((userDocument) => _toUser(userDocument)).toList();
  }

  @override
  Future<User?> byId(String id) async {
    final userDocument = await collection.doc(id).get();
    return userDocument.exists ? _toUser(userDocument) : null;
  }

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }

  @override
  Future<void> remove(User item) {
    throw UnimplementedError();
  }

  User _toUser(DocumentSnapshot<Map<String, dynamic>> document) {
    return User.fromJson(document.data()!).copyWith(id: document.id);
  }
}
