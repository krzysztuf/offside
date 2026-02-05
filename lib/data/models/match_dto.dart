// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_dto.freezed.dart';
part 'match_dto.g.dart';

@freezed
sealed class MatchDto with _$MatchDto {
  const factory MatchDto({
    required int id,
    @JsonKey(name: 'home_team_id') required int homeTeamId,
    @JsonKey(name: 'away_team_id') required int awayTeamId,
    @JsonKey(name: 'kick_off_date') required int kickOffDate,
    required String stage,
    @JsonKey(name: 'knockout_stage') required int knockoutStage,
    @JsonKey(name: 'home_result') int? homeResult,
    @JsonKey(name: 'away_result') int? awayResult,
    @JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId,
  }) = _MatchDto;

  factory MatchDto.fromJson(Map<String, dynamic> json) => _$MatchDtoFromJson(json);
}
