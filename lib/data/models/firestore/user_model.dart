import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String firebaseId;
  final String name;
  final String surname;
  final String? image;
  final String? winnerPredictionId;

  UserModel(
    this.id,
    this.firebaseId,
    this.name,
    this.surname,
    this.image,
    this.winnerPredictionId,
  );

  Map<String, dynamic> toJson() {
    return {
      'firebaseId': firebaseId,
      'name': name,
      'surname': surname,
      'image': image,
      'winnerPredictionId': winnerPredictionId,
    };
  }

  factory UserModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return UserModel(
      snapshot.id,
      json['firebaseId'] as String,
      json['name'] as String,
      json['surname'] as String,
      json['image'] as String?,
      json['winnerPredictionId'] as String?,
    );
  }
}
