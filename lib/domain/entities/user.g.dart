// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      surname: json['surname'] as String,
      nickname: json['nickname'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'nickname': instance.nickname,
      'image': instance.image,
    };
