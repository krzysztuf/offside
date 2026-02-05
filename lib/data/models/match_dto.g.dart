// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchDto _$MatchDtoFromJson(Map<String, dynamic> json) => _MatchDto(
  id: (json['id'] as num).toInt(),
  homeTeamId: (json['home_team_id'] as num).toInt(),
  awayTeamId: (json['away_team_id'] as num).toInt(),
  kickOffDate: (json['kick_off_date'] as num).toInt(),
  stage: json['stage'] as String,
  knockoutStage: (json['knockout_stage'] as num).toInt(),
  homeResult: (json['home_result'] as num?)?.toInt(),
  awayResult: (json['away_result'] as num?)?.toInt(),
  penaltiesWinnerId: (json['penalties_winner_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$MatchDtoToJson(_MatchDto instance) => <String, dynamic>{
  'id': instance.id,
  'home_team_id': instance.homeTeamId,
  'away_team_id': instance.awayTeamId,
  'kick_off_date': instance.kickOffDate,
  'stage': instance.stage,
  'knockout_stage': instance.knockoutStage,
  'home_result': instance.homeResult,
  'away_result': instance.awayResult,
  'penalties_winner_id': instance.penaltiesWinnerId,
};
