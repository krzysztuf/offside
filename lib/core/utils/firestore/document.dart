import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';

class Document<Model> {
  Model? _value;

  Model get value => _value!;

  String get id => path.split('/').last;
  final String path;

  Document(this.path, {Model? model}) : _value = model;

  Future<void> fetch() async {
    _value ??= (await FirebaseFirestore.instance.typedDoc<Model>(path).get()).data()!;
  }
}
