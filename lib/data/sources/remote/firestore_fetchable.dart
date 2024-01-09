import 'dart:developer';

import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/core/utils/firestore_reference.dart';
import 'package:offside/domain/entities/fetchable.dart';
import 'package:supercharged/supercharged.dart';

class FirestoreFetchable<Entity, Model> implements Fetchable<Entity> {
  Entity? _entity;

  final FirestoreReference<Model> reference;

  FirestoreFetchable(this.reference);

  @override
  Entity get value => _entity!;

  @override
  Future<void> fetch() async {
    if (_entity != null) {
      return;
    }
    
    await reference.fetch();
    await Future.delayed(5.seconds);

    try {
      _entity = AutoMapper<FirestoreReference<Model>, Entity>().map(reference);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      return Future.error(e);
    }
  }
}
