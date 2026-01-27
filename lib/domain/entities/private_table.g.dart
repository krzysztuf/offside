// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateTable _$PrivateTableFromJson(Map<String, dynamic> json) =>
    _PrivateTable(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      memberIds: (json['memberIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PrivateTableToJson(_PrivateTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'memberIds': instance.memberIds,
    };
