// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
  id: json['id'] as String? ?? '',
  name: json['name'] as String,
  abbreviation: json['abbreviation'] as String,
);

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
  'name': instance.name,
  'abbreviation': instance.abbreviation,
};
