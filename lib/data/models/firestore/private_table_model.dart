import 'package:cloud_firestore/cloud_firestore.dart';

class PrivateTableModel {
  final String id;
  final String name;
  final String ownerId;
  final List<String> memberIds;

  PrivateTableModel(
    this.id,
    this.name,
    this.ownerId,
    this.memberIds,
  );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ownerId': ownerId,
      'memberIds': memberIds,
    };
  }

  factory PrivateTableModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return PrivateTableModel(
      snapshot.id,
      json['name'] as String,
      json['ownerId'] as String,
      (json['memberIds'] as List).map((e) => e.toString()).toList(),
    );
  }
}
