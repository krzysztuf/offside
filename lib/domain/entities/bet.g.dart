// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bet _$BetFromJson(Map<String, dynamic> json) => _Bet(
  id: (json['id'] as num?)?.toInt() ?? 0,
  matchId: (json['matchId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  prediction: MatchOutcome.fromJson(json['prediction'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BetToJson(_Bet instance) => <String, dynamic>{
  'matchId': instance.matchId,
  'userId': instance.userId,
  'prediction': instance.prediction,
};
