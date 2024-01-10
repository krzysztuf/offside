import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseRepository<Entity, Model> implements Repository<Entity> {
  final CollectionReference<Model> collection;

  final modelToEntity = AutoMapper<Document<Model>, Entity>().map;
  final entityToModel = AutoMapper<Entity, Document<Model>>().map;

  FirebaseRepository({required this.collection});

  @override
  Future<List<Entity>> all() async {
    final items = await typedReferencesList();

    return items.map(modelToEntity).toList();
  }

  @override
  Future<Entity?> byId(String id) async {
    final snapshot = await collection.doc(id).get();
    if (!snapshot.exists) {
      return null;
    }

    return modelToEntity(Document('', model: snapshot.data()));
  }

  @override
  Future<void> add(Entity item) {
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }

  @override
  Future<void> remove(Entity item) {
    throw UnimplementedError();
  }

  Future<List<Document<Model>>> typedReferencesList() async {
    return (await collection.get()).docs.map((snapshot) {
      return Document(
        '${collection.path}/${snapshot.id}',
        model: snapshot.data(),
      );
    }).toList();
  }
}
