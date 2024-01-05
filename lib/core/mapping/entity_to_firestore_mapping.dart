import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:offside/core/mapper/register_mapping.dart';
import 'package:offside/core/utils/firestore_reference.dart';
import 'package:offside/data/models/firebase/match_model.dart';
import 'package:offside/data/models/firebase/team_model.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';

extension EntityToFirestoreMapping on GetIt {
  void registerEntityToFirestoreModelsMapping() {
    addBidirectionalMapper<Match, MatchModel>(
      forward: (match) {
        return MatchModel(
          FirestoreReference<TeamModel>(match.homeTeam.id),
          FirestoreReference<TeamModel>(match.homeTeam.id),
          Timestamp.fromDate(match.kickOffDate),
        );
      },
      backward: (model) {
        final homeTeam = model.homeTeam.value;
        final awayTeam = model.awayTeam.value;
        return Match(
          homeTeam: Team(name: homeTeam.name, abbreviation: homeTeam.abbreviation),
          awayTeam: Team(name: awayTeam.name, abbreviation: awayTeam.abbreviation),
          kickOffDate: model.kickOffDate.toDate(),
        );
      },
    );
  }
}
