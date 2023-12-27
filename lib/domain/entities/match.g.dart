// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      id: json['id'] as int,
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: Team.fromJson(json['awayTeam'] as Map<String, dynamic>),
      kickOffDate: DateTime.parse(json['kickOffDate'] as String),
      result: json['result'] == null
          ? null
          : MatchResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'kickOffDate': instance.kickOffDate.toIso8601String(),
      'result': instance.result,
    };
