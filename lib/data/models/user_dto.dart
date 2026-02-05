// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    required String name,
    required String surname,
    String? nickname,
    String? image,
    @JsonKey(name: 'winner_prediction_id') int? winnerPredictionId,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  User toEntity(Map<int, String>? teamIdToAbbreviation) {
    String? winnerTeamAbbreviation;
    if (winnerPredictionId != null && teamIdToAbbreviation != null) {
      winnerTeamAbbreviation = teamIdToAbbreviation[winnerPredictionId]?.toLowerCase();
    }
    return User(
      id: id,
      name: name,
      surname: surname,
      nickname: nickname,
      image: image,
      winnerPredictionId: winnerTeamAbbreviation,
    );
  }
}
