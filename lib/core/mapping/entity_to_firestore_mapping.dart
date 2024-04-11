import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:offside/core/mapper/register_mapping.dart';
import 'package:offside/core/utils/firestore/document.dart';
import 'package:offside/core/utils/firestore/document_collection.dart';
import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/models/firestore/team_model.dart';
import 'package:offside/data/models/firestore/user_model.dart';
import 'package:offside/data/sources/remote/firestore_collection_fetchable.dart';
import 'package:offside/data/sources/remote/firestore_document_fetchable.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';

extension EntityToFirestoreMapping on GetIt {
  void addEntityFirestoreModelsMapping() {
    addBidirectionalMapper<Match, Document<MatchModel>>(
      forward: (entity) => Document(
        entity.id,
        model: MatchModel(
          entity.id,
          Document<TeamModel>('teams/${entity.homeTeam.value.id}'),
          Document<TeamModel>('teams/${entity.awayTeam.value.id}'),
          Timestamp.fromDate(entity.kickOffDate),
          entity.stage,
          DocumentCollection<BetModel>('matches/${entity.id}/bets'),
          entity.result?.toJson(),
        ),
      ),
      backward: (document) => Match(
        id: document.id,
        homeTeam: FirestoreFetchable(document.value.homeTeam),
        awayTeam: FirestoreFetchable(document.value.awayTeam),
        kickOffDate: document.value.kickOffDate.toDate(),
        stage: document.value.stage,
        bets: FirestoreCollectionFetchable<Bet, BetModel>(document.value.bets),
        result: document.value.result != null ? Goals.fromJson(document.value.result!) : null,
      ),
    );

    addBidirectionalMapper<User, Document<UserModel>>(
      forward: (entity) => Document(
        entity.id,
        model: UserModel(
          entity.id,
          entity.firebaseId,
          entity.name,
          entity.surname,
          entity.image,
        ),
      ),
      backward: (document) => User(
        id: document.value.id,
        firebaseId: document.value.firebaseId,
        name: document.value.name,
        surname: document.value.surname,
        image: document.value.image,
      ),
    );

    addBidirectionalMapper<Team, Document<TeamModel>>(
      forward: (entity) => Document(
        entity.id,
        model: TeamModel(
          entity.id,
          entity.name,
          entity.abbreviation,
          entity.logo,
        ),
      ),
      backward: (document) => Team(
        id: document.id,
        name: document.value.name,
        abbreviation: document.value.abbreviation,
        logo: document.value.logo,
      ),
    );

    addBidirectionalMapper<Bet, Document<BetModel>>(
      forward: (entity) => Document(
        entity.id,
        model: BetModel(
          entity.id,
          entity.matchId,
          entity.userId,
          entity.prediction.home,
          entity.prediction.away,
        ),
      ),
      backward: (document) => Bet(
        id: document.id,
        matchId: document.value.matchId,
        userId: document.value.userId,
        prediction: Goals(
          home: document.value.homeGoalsPrediction,
          away: document.value.awayGoalsPrediction,
        ),
      ),
    );

    addMapper<BetModel, Bet>((model) => Bet(
          id: model.id,
          matchId: model.matchId,
          userId: model.userId,
          prediction: Goals(
            home: model.homeGoalsPrediction,
            away: model.awayGoalsPrediction,
          ),
        ));
  }
}
