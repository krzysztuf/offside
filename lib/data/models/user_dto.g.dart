// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: (json['id'] as num).toInt(),
  firebaseId: json['firebase_id'] as String,
  name: json['name'] as String,
  surname: json['surname'] as String,
  nickname: json['nickname'] as String?,
  image: json['image'] as String?,
  winnerPredictionId: (json['winner_prediction_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'firebase_id': instance.firebaseId,
  'name': instance.name,
  'surname': instance.surname,
  'nickname': instance.nickname,
  'image': instance.image,
  'winner_prediction_id': instance.winnerPredictionId,
};
