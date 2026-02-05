// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamDto _$TeamDtoFromJson(Map<String, dynamic> json) => _TeamDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  abbreviation: json['abbreviation'] as String,
);

Map<String, dynamic> _$TeamDtoToJson(_TeamDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'abbreviation': instance.abbreviation,
};
