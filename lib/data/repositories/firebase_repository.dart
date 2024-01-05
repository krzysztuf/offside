import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/data/models/firebase/reference_holder.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirebaseRepository<Entity extends Object, FirestoreModel extends Object> implements Repository<Entity> {
  final Entity Function(FirestoreModel model) fromModel;
  final FirestoreModel Function(Entity model) toModel;
  final CollectionReference<FirestoreModel> collection;

  FirebaseRepository({
    required this.collection,
    required this.fromModel,
    required this.toModel,
  });

  @override
  Future<List<Entity>> all() async {
    final items = await modelList();
    await Future.wait(items.map(maybeFetchProperties));
    
    return items.map(fromModel).toList();
  }

  @override
  Future<Entity?> byId(String id) async {
    final snapshot = await collection.doc(id).get();
    return snapshot.exists ? fromModel(snapshot.data()!) : null;
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

  Future<List<FirestoreModel>> modelList() async {
    return (await collection.get()).docs.map((e) => e.data()).toList();
  }

  Future<void> maybeFetchProperties(FirestoreModel model) async {
    if (model is ReferenceHolder) {
      await model.fetchReferences();
    }
  }
}
