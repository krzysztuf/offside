// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Competition _$$_CompetitionFromJson(Map<String, dynamic> json) =>
    _$_Competition(
      id: json['id'] as String,
      name: json['name'] as String,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CompetitionToJson(_$_Competition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'matches': instance.matches,
    };
