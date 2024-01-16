import 'dart:developer';

import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/core/utils/firestore/document_collection.dart';
import 'package:offside/domain/entities/fetchable.dart';

class FirestoreCollectionFetchable<Entity, Model> implements Fetchable<List<Entity>> {
  List<Entity>? _entities;

  final DocumentCollection<Model> collection;

  FirestoreCollectionFetchable(this.collection);

  @override
  List<Entity> get value => _entities!;

  @override
  bool get hasValue => _entities != null;

  @override
  Future<void> fetch() async {
    if (_entities != null) {
      return;
    }

    await collection.fetch();

    try {
      _entities = AutoMapper<Document<Model>, Entity>().mapMany(collection.items);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      return Future.error(e);
    }
  }
}
