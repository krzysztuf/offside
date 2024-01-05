import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';

class FirestoreReference<Model> {
  final String path;

  Model? _model;

  Model get value => _model!;

  FirestoreReference(this.path);

  Future<Model> get() async {
    _model ??= (await FirebaseFirestore.instance.typedDoc<Model>(path).get()).data()!;
    return _model!;
  }
}
