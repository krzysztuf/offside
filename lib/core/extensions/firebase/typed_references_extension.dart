import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/setting_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';

extension TypedReferencesExtension on FirebaseFirestore {
  CollectionReference<T> typedCollection<T>(String name) {
    return collection(name).withConverter(
      fromFirestore: fromFirestoreFactory<T>(),
      toFirestore: (dynamic model, _) => model.toJson(),
    );
  }

  Query<T> typedCollectionGroup<T>(String path) {
    return collectionGroup(path).withConverter(
      fromFirestore: fromFirestoreFactory<T>(),
      toFirestore: (dynamic model, _) => model.toJson(),
    );
  }

  DocumentReference<T> typedDoc<T>(String name) {
    return doc(name).withConverter(
      fromFirestore: fromFirestoreFactory<T>(),
      toFirestore: (dynamic model, _) => model.toJson(),
    );
  }

  static FromFirestore<T> fromFirestoreFactory<T>() {
    if (_fromFirestoreFactories.containsKey(T)) {
      return _fromFirestoreFactories[T] as FromFirestore<T>;
    }

    throw UnimplementedError('${T.toString()} is not supported in fromFirestore');
  }

  static final Map<Type, FromFirestore> _fromFirestoreFactories = {
    UserModel: (snapshot, _) => UserModel.fromJson(snapshot),
    BetModel: (snapshot, _) => BetModel.fromJson(snapshot),
    TeamModel: (snapshot, _) => TeamModel.fromJson(snapshot),
    MatchModel: (snapshot, _) => MatchModel.fromJson(snapshot),
    SettingModel: (snapshot, _) => SettingModel.fromJson(snapshot),
  };
}
