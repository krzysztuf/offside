import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';

class Document<Model> {
  final String path;

  Model? model;

  Model get value => model!;

  Document(this.path, {this.model});

  Future<void> fetch() async {
    model ??= (await FirebaseFirestore.instance.typedDoc<Model>(path).get()).data()!;
  }
}
