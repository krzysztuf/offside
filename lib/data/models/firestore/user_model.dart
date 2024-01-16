import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String name;
  final String surname;
  final String? image;

  UserModel(
    this.id,
    this.name,
    this.surname,
    this.image,
  );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'image': image,
    };
  }

  factory UserModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return UserModel(
      snapshot.id,
      json['name'] as String,
      json['surname'] as String,
      json['image'] as String?,
    );
  }
}
