import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirebaseCollectionMixin {
  String get collectionName;

  CollectionReference<Map<String, dynamic>> get collection {
    return FirebaseFirestore.instance.collection(collectionName);
  }
}
