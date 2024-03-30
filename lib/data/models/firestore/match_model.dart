import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/core/utils/firestore/document_collection.dart';
import 'package:offside/data/models/firestore/bet_model.dart';

import 'team_model.dart';

class MatchModel {
  final String id;
  final Document<TeamModel> homeTeam;
  final Document<TeamModel> awayTeam;
  final Timestamp kickOffDate;
  final DocumentCollection<BetModel> bets;
  final Map<String, dynamic>? result;

  MatchModel(
    this.id,
    this.homeTeam,
    this.awayTeam,
    this.kickOffDate,
    this.bets,
    this.result,
  );

  Map<String, dynamic> toJson() {
    return {
      'homeTeamRef': homeTeam.path,
      'awayTeamRef': awayTeam.path,
      'kickOffDate': kickOffDate,
      'result': result,
    };
  }

  factory MatchModel.fromJson(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final json = snapshot.data()!;

    return MatchModel(
      snapshot.id,
      Document(json['homeTeamRef'] as String),
      Document(json['awayTeamRef'] as String),
      json['kickOffDate'] as Timestamp,
      DocumentCollection('matches/${snapshot.id}/bets'),
      json['result'] as Map<String, dynamic>?,
    );
  }
}
