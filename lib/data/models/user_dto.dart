// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    @JsonKey(name: 'firebase_id') required String firebaseId,
    required String name,
    required String surname,
    String? nickname,
    String? image,
    @JsonKey(name: 'winner_prediction_id') int? winnerPredictionId,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  User toEntity() => User(
    id: id.toString(),
    firebaseId: firebaseId,
    name: name,
    surname: surname,
    nickname: nickname,
    image: image,
    winnerPredictionId: winnerPredictionId?.toString(),
  );
}
