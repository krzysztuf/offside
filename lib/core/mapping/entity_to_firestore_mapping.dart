import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:offside/core/mapper/register_mapping.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';
import 'package:offside/data/sources/remote/firestore_fetchable.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';

extension EntityToFirestoreMapping on GetIt {
  void registerEntityToFirestoreModelsMapping() {
    addBidirectionalMapper<Match, Document<MatchModel>>(
      forward: (match) => Document(
        match.id,
        model: MatchModel(
          match.id,
          Document<TeamModel>(match.homeTeam.value.id),
          Document<TeamModel>(match.awayTeam.value.id),
          Timestamp.fromDate(match.kickOffDate),
        ),
      ),
      backward: (reference) => Match(
          id: reference.path,
          homeTeam: FirestoreFetchable(reference.value.homeTeam),
          awayTeam: FirestoreFetchable(reference.value.awayTeam),
          kickOffDate: reference.value.kickOffDate.toDate(),
          bets: []),
    );

    addBidirectionalMapper<User, Document<UserModel>>(
      forward: (user) => Document<UserModel>(
        user.id,
        model: UserModel(
          user.name,
          user.surname,
          user.image,
        ),
      ),
      backward: (reference) {
        final model = reference.value;
        return User(
          id: reference.path,
          name: model.name,
          surname: model.surname,
          image: model.image,
        );
      },
    );

    addBidirectionalMapper<Team, Document<TeamModel>>(
      forward: (team) => Document<TeamModel>(
        team.id,
        model: TeamModel(
          team.id,
          team.name,
          team.abbreviation,
        ),
      ),
      backward: (reference) => Team(
        id: reference.path,
        name: reference.value.name,
        abbreviation: reference.value.abbreviation,
      ),
    );
  }
}
