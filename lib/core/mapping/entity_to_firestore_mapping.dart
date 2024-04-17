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
import 'package:offside/domain/entities/match_outcome.dart';
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
          entity.knockoutStage,
          entity.outcome?.penaltiesWinnerId,
          DocumentCollection<BetModel>('matches/${entity.id}/bets'),
          entity.outcome?.goals.toJson(),
        ),
      ),
      backward: (document) => Match(
        id: document.id,
        homeTeam: FirestoreFetchable(document.value.homeTeam),
        awayTeam: FirestoreFetchable(document.value.awayTeam),
        kickOffDate: document.value.kickOffDate.toDate(),
        stage: document.value.stage,
        knockoutStage: document.value.knockoutStage,
        outcome: _buildOutcome(document.value),
        bets: FirestoreCollectionFetchable<Bet, BetModel>(document.value.bets),
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
          entity.winnerPredictionId,
        ),
      ),
      backward: (document) => User(
        id: document.value.id,
        firebaseId: document.value.firebaseId,
        name: document.value.name,
        surname: document.value.surname,
        image: document.value.image,
        winnerPredictionId: document.value.winnerPredictionId,
      ),
    );

    addBidirectionalMapper<Team, Document<TeamModel>>(
      forward: (entity) => Document(
        entity.id,
        model: TeamModel(
          entity.id,
          entity.name,
          entity.abbreviation,
        ),
      ),
      backward: (document) => Team(
        id: document.id,
        name: document.value.name,
        abbreviation: document.value.abbreviation,
      ),
    );

    addBidirectionalMapper<Bet, Document<BetModel>>(
      forward: (entity) {
        return Document(
          entity.id,
          model: BetModel(
            entity.id,
            entity.matchId,
            entity.userId,
            entity.prediction.goals.home,
            entity.prediction.goals.away,
            entity.prediction.penaltiesWinnerId,
          ),
        );
      },
      backward: (document) => Bet(
        id: document.id,
        matchId: document.value.matchId,
        userId: document.value.userId,
        prediction: MatchOutcome(
          goals: Goals(
            home: document.value.homeGoalsPrediction,
            away: document.value.awayGoalsPrediction,
          ),
          penaltiesWinnerId: document.value.penaltiesWinnerId,
        ),
      ),
    );

    addMapper<BetModel, Bet>((model) => Bet(
          id: model.id,
          matchId: model.matchId,
          userId: model.userId,
          prediction: MatchOutcome(
            goals: Goals(
              home: model.homeGoalsPrediction,
              away: model.awayGoalsPrediction,
            ),
            penaltiesWinnerId: model.penaltiesWinnerId,
          ),
        ));

    addMapper<MatchModel, Match>((model) => Match(
          id: model.id,
          homeTeam: FirestoreFetchable(model.homeTeam),
          awayTeam: FirestoreFetchable(model.awayTeam),
          kickOffDate: model.kickOffDate.toDate(),
          stage: model.stage,
          knockoutStage: model.knockoutStage,
          outcome: _buildOutcome(model),
          bets: FirestoreCollectionFetchable<Bet, BetModel>(model.bets),
        ));
  }

  MatchOutcome? _buildOutcome(MatchModel match) {
    return match.result != null
        ? MatchOutcome(penaltiesWinnerId: match.penaltiesWinnerId, goals: Goals.fromJson(match.result!))
        : null;
  }
}
