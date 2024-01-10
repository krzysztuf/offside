import 'package:cloud_firestore/cloud_firestore.dart';

final class TeamModel {
  final String id;
  final String name;
  final String abbreviation;

  TeamModel(
    this.id,
    this.name,
    this.abbreviation,
  );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'abbreviation': abbreviation,
    };
  }

  factory TeamModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return TeamModel(
      snapshot.id,
      json['name'] as String,
      json['abbreviation'] as String,
    );
  }
}
