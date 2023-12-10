import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/models/identifiable.dart';

import 'match_result.dart';
import 'team.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match implements Identifiable {
  const factory Match({
    required int id,
    required Team homeTeam,
    required Team awayTeam,
    MatchResult? result,
  }) = _Match;

  Match._();

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @override
  int get identifier => id;
}
