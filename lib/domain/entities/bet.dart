import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'bet.freezed.dart';
part 'bet.g.dart';

@freezed
sealed class Bet with _$Bet {
  const factory Bet({
    // ignore: invalid_annotation_target
    @Default(0) @JsonKey(includeToJson: false) int id,
    required int matchId,
    required int userId,
    required MatchOutcome prediction,
  }) = _Bet;

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);
}
