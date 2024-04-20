// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateTableImpl _$$PrivateTableImplFromJson(Map<String, dynamic> json) =>
    _$PrivateTableImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      memberIds:
          (json['memberIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PrivateTableImplToJson(_$PrivateTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'memberIds': instance.memberIds,
    };
