// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchOutcome _$MatchOutcomeFromJson(Map<String, dynamic> json) =>
    _MatchOutcome(
      goals: json['goals'] == null
          ? const Goals()
          : Goals.fromJson(json['goals'] as Map<String, dynamic>),
      penaltiesWinnerId: json['penaltiesWinnerId'] as String? ?? null,
    );

Map<String, dynamic> _$MatchOutcomeToJson(_MatchOutcome instance) =>
    <String, dynamic>{
      'goals': instance.goals,
      'penaltiesWinnerId': instance.penaltiesWinnerId,
    };
