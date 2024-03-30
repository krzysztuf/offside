import 'package:cloud_firestore/cloud_firestore.dart';

class BetModel {
  final String id;
  final String matchId;
  final String userId;
  final int homeGoalsPrediction;
  final int awayGoalsPrediction;

  BetModel(
    this.id,
    this.matchId,
    this.userId,
    this.homeGoalsPrediction,
    this.awayGoalsPrediction,
  );

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'matchId': matchId,
      'homeGoalsPrediction': homeGoalsPrediction,
      'awayGoalsPrediction': awayGoalsPrediction,
    };
  }

  factory BetModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;
    return BetModel(
      snapshot.id,
      json['matchId'] as String,
      json['userId'] as String,
      json['homeGoalsPrediction'] as int,
      json['awayGoalsPrediction'] as int,
    );
  }
}
