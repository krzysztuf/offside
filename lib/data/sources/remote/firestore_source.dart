import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/extensions/firebase/typed_references_extension.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';

abstract class FirestoreSource {
  static final teams = FirebaseFirestore.instance.typedCollection<TeamModel>('teams');

  static final matches = FirebaseFirestore.instance.typedCollection<MatchModel>('matches');

  static final users = FirebaseFirestore.instance.typedCollection<UserModel>('users');
}
