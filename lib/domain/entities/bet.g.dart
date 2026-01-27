// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bet _$BetFromJson(Map<String, dynamic> json) => _Bet(
  id: json['id'] as String? ?? '',
  matchId: json['matchId'] as String,
  userId: json['userId'] as String,
  prediction: MatchOutcome.fromJson(json['prediction'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BetToJson(_Bet instance) => <String, dynamic>{
  'matchId': instance.matchId,
  'userId': instance.userId,
  'prediction': instance.prediction,
};
