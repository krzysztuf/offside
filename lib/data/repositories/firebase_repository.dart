import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore_reference.dart';
import 'package:offside/data/models/firestore/reference_holder.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseRepository<Entity extends Object, Model extends Object> implements Repository<Entity> {
  final CollectionReference<Model> collection;

  final modelToEntity = AutoMapper<FirestoreReference<Model>, Entity>().map;
  final entityToModel = AutoMapper<Entity, FirestoreReference<Model>>().map;

  FirebaseRepository({required this.collection});

  @override
  Future<List<Entity>> all() async {
    final items = await typedReferencesList();
    await Future.wait(items.map(maybeFetchProperties));

    return items.map(modelToEntity).toList();
  }

  @override
  Future<Entity?> byId(String id) async {
    final snapshot = await collection.doc(id).get();
    if (!snapshot.exists) {
      return null;
    }

    return modelToEntity(FirestoreReference('', model: snapshot.data()));
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

  Future<List<FirestoreReference<Model>>> typedReferencesList() async {
    return (await collection.get()).docs.map((snapshot) {
      return FirestoreReference(
        '${collection.path}/${snapshot.id}',
        model: snapshot.data(),
      );
    }).toList();
  }

  Future<void> maybeFetchProperties(FirestoreReference<Model> ref) async {
    if (ref.model is ReferenceHolder) {
      await (ref.model as ReferenceHolder).fetchReferences();
    }
  }
}
