import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match_goals.dart';

import 'match.dart';

part 'match_result.freezed.dart';
part 'match_result.g.dart';

@freezed
class MatchResult with _$MatchResult {
  const factory MatchResult({
    required int id,
    required Match match,
    required MatchGoals goals,
  }) = _MatchResult;

  factory MatchResult.fromJson(Map<String, dynamic> json) => _$MatchResultFromJson(json);
}
