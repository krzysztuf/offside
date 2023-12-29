// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchResultImpl _$$MatchResultImplFromJson(Map<String, dynamic> json) =>
    _$MatchResultImpl(
      id: json['id'] as int,
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
      goals: MatchGoals.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchResultImplToJson(_$MatchResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'match': instance.match,
      'goals': instance.goals,
    };
