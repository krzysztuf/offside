import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:offside/core/mapper/register_mapping.dart';
import 'package:offside/core/utils/firestore_reference.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';
import 'package:offside/data/sources/remote/firestore_fetchable.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';

extension EntityToFirestoreMapping on GetIt {
  void registerEntityToFirestoreModelsMapping() {
    addBidirectionalMapper<Match, FirestoreReference<MatchModel>>(
      forward: (match) => FirestoreReference(
        match.id,
        model: MatchModel(
          FirestoreReference<TeamModel>(match.homeTeam.value.id),
          FirestoreReference<TeamModel>(match.awayTeam.value.id),
          Timestamp.fromDate(match.kickOffDate),
        ),
      ),
      backward: (reference) => Match(
        id: reference.path,
        homeTeam: FirestoreFetchable(reference.value.homeTeam),
        awayTeam: FirestoreFetchable(reference.value.awayTeam),
        kickOffDate: reference.value.kickOffDate.toDate(),
      ),
    );

    addBidirectionalMapper<User, FirestoreReference<UserModel>>(
      forward: (user) => FirestoreReference(
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

    addBidirectionalMapper<Team, FirestoreReference<TeamModel>>(
      forward: (team) => FirestoreReference<TeamModel>(
        team.id,
        model: TeamModel(
          team.name,
          team.abbreviation,
        ),
      ),
      backward: (reference) => Team(
        name: reference.value.name,
        abbreviation: reference.value.abbreviation,
      ),
    );
  }
}
