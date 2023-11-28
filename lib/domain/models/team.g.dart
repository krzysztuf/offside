// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as int,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      kickOffDate: DateTime.parse(json['kickOffDate'] as String),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'kickOffDate': instance.kickOffDate.toIso8601String(),
      'logo': instance.logo,
    };
