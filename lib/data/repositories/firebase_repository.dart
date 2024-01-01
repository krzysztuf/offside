import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseRepository<Item> implements Repository<Item> {
  final String collectionName;
  final Item Function(DocumentSnapshot<Map<String, dynamic>> document) fromDocument;

  FirebaseRepository(this.collectionName, {required this.fromDocument});

  CollectionReference<Map<String, dynamic>> get collection {
    return FirebaseFirestore.instance.collection(collectionName);
  }

  @override
  Future<void> add(Item item) {
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> all() async {
    final items = await collection.get();
    return items.docs.map((document) => fromDocument(document)).toList();
  }

  @override
  Future<Item?> byId(String id) async {
    final document = await collection.doc(id).get();
    return document.exists ? fromDocument(document) : null;
  }

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }

  @override
  Future<void> remove(Item item) {
    throw UnimplementedError();
  }
}
