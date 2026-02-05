// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateTable _$PrivateTableFromJson(Map<String, dynamic> json) =>
    _PrivateTable(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      ownerId: (json['ownerId'] as num).toInt(),
      memberIds: (json['memberIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$PrivateTableToJson(_PrivateTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'memberIds': instance.memberIds,
    };
