// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchResultImpl _$$MatchResultImplFromJson(Map<String, dynamic> json) =>
    _$MatchResultImpl(
      id: json['id'] as int,
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
      homeScore: json['homeScore'] as int,
      awayScore: json['awayScore'] as int,
    );

Map<String, dynamic> _$$MatchResultImplToJson(_$MatchResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'match': instance.match,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
    };
