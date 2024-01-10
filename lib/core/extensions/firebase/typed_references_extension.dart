import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';

extension TypedReferencesExtension on FirebaseFirestore {
  CollectionReference<T> typedCollection<T>(String name) {
    return collection(name).withConverter(
      fromFirestore: fromFirestoreFactory<T>(),
      toFirestore: toFirestoreFactory<T>(),
    );
  }

  DocumentReference<T> typedDoc<T>(String name) {
    return doc(name).withConverter(
      fromFirestore: fromFirestoreFactory<T>(),
      toFirestore: toFirestoreFactory<T>(),
    );
  }

  static FromFirestore<T> fromFirestoreFactory<T>() {
    if (_fromFirestoreFactories.containsKey(T)) {
      return _fromFirestoreFactories[T] as FromFirestore<T>;
    }

    throw UnimplementedError('${T.toString()} is not supported in fromFirestore');
  }

  static final Map<Type, FromFirestore> _fromFirestoreFactories = {
    UserModel: (snapshot, _) {
      return UserModel.fromJson(snapshot.data()!);
    },
    TeamModel: (snapshot, _) => TeamModel.fromJson(snapshot),
    MatchModel: (snapshot, _) => MatchModel.fromJson(snapshot),
  };

  static ToFirestore<T> toFirestoreFactory<T>() {
    if (_toFirestoreFactories.containsKey(T)) {
      return _toFirestoreFactories[T] as ToFirestore<T>;
    }

    throw UnimplementedError('${T.toString()} is not supported in toFirestore');
  }

  static final Map<Type, ToFirestore> _toFirestoreFactories = {
    UserModel: (model, _) => model.toJson(),
    TeamModel: (model, _) => model.toJson(),
    MatchModel: (model, _) => model.toJson(),
  };
}
