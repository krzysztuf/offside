import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/data/repositories/firebase_collection_mixin.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseCollection with FirebaseCollectionMixin implements Repository<User> {
  final String _collectionName;

  FirebaseCollection(this._collectionName);

  @override
  String get collectionName => _collectionName;

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
