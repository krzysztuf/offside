import 'package:cloud_firestore/cloud_firestore.dart';

class SettingModel {
  final String id;
  final String value;

  SettingModel(
    this.id,
    this.value,
  );

  Map<String, dynamic> toJson() {
    return {
      'value': value,
    };
  }

  factory SettingModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return SettingModel(
      snapshot.id,
      json['value'] as String,
    );
  }
}
