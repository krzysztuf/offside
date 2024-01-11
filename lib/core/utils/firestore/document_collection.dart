import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/firestore_path_extensions.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';

import 'document.dart';

class DocumentCollection<Model> {
  List<Document<Model>>? _items;

  final String path;

  List<Document<Model>> get items => _items!;

  List<Model> get models => items.map((item) => item.value).toList();

  DocumentCollection(this.path);

  Future<void> fetch() async {
    log('--- $path');

    if (_items != null) {
      return;
    }

    try {
      final snapshot = await FirebaseFirestore.instance.typedCollection<Model>(path).get();
      _items = snapshot.docs.map((doc) {
        return Document(path.pathJoin(doc.id), model: doc.data()!);
      }).toList();
    } catch (e) {
      log(e.toString());
    }
  }
}
