// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchOutcomeImpl _$$MatchOutcomeImplFromJson(Map<String, dynamic> json) =>
    _$MatchOutcomeImpl(
      goals: json['goals'] == null
          ? const Goals()
          : Goals.fromJson(json['goals'] as Map<String, dynamic>),
      penaltiesWinnerId: json['penaltiesWinnerId'] as String? ?? null,
    );

Map<String, dynamic> _$$MatchOutcomeImplToJson(_$MatchOutcomeImpl instance) =>
    <String, dynamic>{
      'goals': instance.goals,
      'penaltiesWinnerId': instance.penaltiesWinnerId,
    };
