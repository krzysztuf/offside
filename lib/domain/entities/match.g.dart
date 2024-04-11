// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      id: json['id'] as String? ?? '',
      kickOffDate: DateTime.parse(json['kickOffDate'] as String),
      stage: json['stage'] as String,
      knockoutStage: json['knockoutStage'] as bool,
      penaltiesWinnerId: json['penaltiesWinnerId'] as String?,
      result: json['result'] == null
          ? null
          : Goals.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kickOffDate': instance.kickOffDate.toIso8601String(),
      'stage': instance.stage,
      'knockoutStage': instance.knockoutStage,
      'penaltiesWinnerId': instance.penaltiesWinnerId,
      'result': instance.result,
    };
