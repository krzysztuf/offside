import 'package:freezed_annotation/freezed_annotation.dart';

import 'goals.dart';

part 'match_outcome.freezed.dart';
part 'match_outcome.g.dart';

@freezed
sealed class MatchOutcome with _$MatchOutcome {
  const factory MatchOutcome({
    @Default(Goals()) Goals goals,
    @Default(null) String? penaltiesWinnerId,
  }) = _MatchOutcome;

  const MatchOutcome._();

  factory MatchOutcome.fromJson(Map<String, dynamic> json) => _$MatchOutcomeFromJson(json);
}
