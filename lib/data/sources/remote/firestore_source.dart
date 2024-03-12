import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';

abstract class FirestoreSource {
  static final teams = typedCollectionRef<TeamModel>('teams');

  static final matches = typedCollectionRef<MatchModel>('matches');

  static final users = typedCollectionRef<UserModel>('users');

  static CollectionReference<T> typedCollectionRef<T>(String path) {
    return FirebaseFirestore.instance.typedCollection<T>(path);
  }

  static Query<T> collectionGroup<T>(String path) {
    return FirebaseFirestore.instance.typedCollectionGroup<T>(path);
  }
}
