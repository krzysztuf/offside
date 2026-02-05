// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_dto.freezed.dart';
part 'bet_dto.g.dart';

@freezed
sealed class BetDto with _$BetDto {
  const factory BetDto({
    required int id,
    @JsonKey(name: 'match_id') required int matchId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'home_goals_prediction') required int homeGoalsPrediction,
    @JsonKey(name: 'away_goals_prediction') required int awayGoalsPrediction,
    @JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId,
  }) = _BetDto;

  factory BetDto.fromJson(Map<String, dynamic> json) => _$BetDtoFromJson(json);
}
