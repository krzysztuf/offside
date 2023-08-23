import 'package:freezed_annotation/freezed_annotation.dart';

import 'match_result.dart';
import 'team.dart';

part 'match.freezed.dart';

@freezed
class Match with _$Match {
  const factory Match({
    required String id,
    required Team homeTeam,
    required Team awayTeam,
    MatchResult? result,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
