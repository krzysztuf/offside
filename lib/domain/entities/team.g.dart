// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      kickOffDate: DateTime.parse(json['kickOffDate'] as String),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'kickOffDate': instance.kickOffDate.toIso8601String(),
      'logo': instance.logo,
    };
