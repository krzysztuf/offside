import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/domain/repositories/repository.dart';

abstract class FirebaseCollection<T> implements Repository<T> {
  final String collectionName;

  FirebaseCollection(this.collectionName);

  CollectionReference<Map<String, dynamic>> get collection {
    return FirebaseFirestore.instance.collection(collectionName);
  }
}
