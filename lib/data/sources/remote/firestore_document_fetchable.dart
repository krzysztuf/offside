import 'dart:developer';

import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/domain/entities/fetchable.dart';

class FirestoreFetchable<Entity, Model> implements Fetchable<Entity> {
  final Document<Model> document;
  Entity? _entity;

  FirestoreFetchable(this.document);

  @override
  Entity get value => _entity!;

  @override
  bool get hasValue => _entity != null;

  @override
  Future<void> fetch({bool force = false}) async {
    if (hasValue && !force) {
      return;
    }

    await document.fetch();

    try {
      _entity = AutoMapper<Document<Model>, Entity>().map(document);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      return Future.error(e);
    }
  }
}
