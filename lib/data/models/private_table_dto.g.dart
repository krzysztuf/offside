// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_table_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateTableDto _$PrivateTableDtoFromJson(Map<String, dynamic> json) =>
    _PrivateTableDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      ownerId: (json['owner_id'] as num).toInt(),
      memberIds: (json['member_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$PrivateTableDtoToJson(_PrivateTableDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner_id': instance.ownerId,
      'member_ids': instance.memberIds,
    };
