// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BetDto _$BetDtoFromJson(Map<String, dynamic> json) => _BetDto(
  id: (json['id'] as num).toInt(),
  matchId: (json['match_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  homeGoalsPrediction: (json['home_goals_prediction'] as num).toInt(),
  awayGoalsPrediction: (json['away_goals_prediction'] as num).toInt(),
  penaltiesWinnerId: (json['penalties_winner_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$BetDtoToJson(_BetDto instance) => <String, dynamic>{
  'id': instance.id,
  'match_id': instance.matchId,
  'user_id': instance.userId,
  'home_goals_prediction': instance.homeGoalsPrediction,
  'away_goals_prediction': instance.awayGoalsPrediction,
  'penalties_winner_id': instance.penaltiesWinnerId,
};
