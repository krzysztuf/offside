import 'package:cloud_firestore/cloud_firestore.dart';

class BetModel {
  final String id;
  final String userId;
  final int homeGoalsPrediction;
  final int awayGoalsPrediction;

  BetModel(
    this.id,
    this.userId,
    this.homeGoalsPrediction,
    this.awayGoalsPrediction,
  );

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'homeGoalsPrediction': homeGoalsPrediction,
      'awayGoalsPrediction': awayGoalsPrediction,
    };
  }

  factory BetModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return BetModel(
      snapshot.id,
      json['userId'] as String,
      json['homeGoalsPrediction'] as int,
      json['awayGoalsPrediction'] as int,
    );
  }
}
