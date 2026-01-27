// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String? ?? '',
  firebaseId: json['firebaseId'] as String,
  name: json['name'] as String,
  surname: json['surname'] as String,
  nickname: json['nickname'] as String?,
  image: json['image'] as String?,
  winnerPredictionId: json['winnerPredictionId'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'firebaseId': instance.firebaseId,
  'name': instance.name,
  'surname': instance.surname,
  'nickname': instance.nickname,
  'image': instance.image,
  'winnerPredictionId': instance.winnerPredictionId,
};
