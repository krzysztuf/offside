import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/utils/firestore_reference.dart';

import 'reference_holder.dart';
import 'team_model.dart';

class MatchModel implements ReferenceHolder {
  final FirestoreReference<TeamModel> homeTeam;
  final FirestoreReference<TeamModel> awayTeam;
  final Timestamp kickOffDate;

  MatchModel(
    this.homeTeam,
    this.awayTeam,
    this.kickOffDate,
  );

  Map<String, dynamic> toJson() {
    return {
      'homeTeamRef': homeTeam.path,
      'awayTeamRef': awayTeam.path,
      'kickOffDate': kickOffDate,
    };
  }

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return MatchModel(
      FirestoreReference(json['homeTeamRef'] as String),
      FirestoreReference(json['awayTeamRef'] as String),
      json['kickOffDate'] as Timestamp,
    );
  }

  @override
  Future<void> fetchReferences() async {
    await Future.wait([homeTeam.get(), awayTeam.get()]);
  }
}
