import 'package:freezed_annotation/freezed_annotation.dart';

import 'match.dart';

part 'match_result.freezed.dart';

@freezed
class MatchResult with _$MatchResult {
  const factory MatchResult({
    required String id,
    required Match match,
    required int homeScore,
    required int awayScore,
  }) = _MatchResult;

  factory MatchResult.fromJson(Map<String, dynamic> json) => _$MatchResultFromJson(json);
}
