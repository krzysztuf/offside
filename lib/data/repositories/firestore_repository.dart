import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';
import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/domain/repositories/repository.dart';

class FirestoreRepository<Entity, Model> implements Repository<Entity> {
  final CollectionReference<Model> collection;

  final documentToEntity = AutoMapper<Document<Model>, Entity>().map;
  final entityToDocument = AutoMapper<Entity, Document<Model>>().map;

  FirestoreRepository({required this.collection});

  @override
  Future<List<Entity>> all() async {
    final items = await typedReferencesList();
    return items.map(documentToEntity).toList();
  }

  @override
  Future<Entity?> byId(String id) async {
    final snapshot = await collection.doc(id).get();
    if (!snapshot.exists) {
      return null;
    }

    return documentToEntity(Document('', model: snapshot.data()));
  }

  @override
  Future<String> add(Entity item) async {
    final document = entityToDocument(item);

    if (document.id.isNotEmpty) {
      throw Exception('$runtimeType: adding item with non empty id');
    }

    final ref = await collection.add(document.value);
    return ref.id;
  }

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }

  @override
  Future<void> update(Entity item) async {
    final document = entityToDocument(item);
    if (document.id.isEmpty) {
      throw Exception('$runtimeType: updating item with empty id');
    }

    final path = '${collection.path}/${document.id}';
    final ref = FirebaseFirestore.instance.typedDoc<Model>(path);
    await ref.set(document.value);
  }

  @override
  Future<void> remove(Entity item) {
    final document = entityToDocument(item);
    if (document.id.isEmpty) {
      throw Exception('$runtimeType: removing item with empty id');
    }

    final path = '${collection.path}/${document.id}';
    final ref = FirebaseFirestore.instance.typedDoc<Model>(path);
    return ref.delete();
  }

  Future<List<Document<Model>>> typedReferencesList() async {
    return (await collection.get()).docs.map((snapshot) {
      return Document(
        '${collection.path}/${snapshot.id}',
        model: snapshot.data(),
      );
    }).toList();
  }

  @override
  Future<List<Entity>> where(Object field, {Object? isEqualTo, Object? isNotEqualTo}) async {
    final query = collection.where(field, isEqualTo: isEqualTo, isNotEqualTo: isNotEqualTo);
    final documents = await query.get();

    return documents.docs.map((snapshot) {
      return documentToEntity(_toDocument(snapshot.id, snapshot.data()));
    }).toList();
  }

  Document<T> _toDocument<T>(String id, T model) {
    return Document('${collection.path}/$id', model: model);
  }
}
