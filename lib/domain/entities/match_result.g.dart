// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchResult _$$_MatchResultFromJson(Map<String, dynamic> json) =>
    _$_MatchResult(
      id: json['id'] as int,
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
      homeScore: json['homeScore'] as int,
      awayScore: json['awayScore'] as int,
    );

Map<String, dynamic> _$$_MatchResultToJson(_$_MatchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'match': instance.match,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
    };
