import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match_goals.dart';

import 'match.dart';
import 'user.dart';

part 'bet.freezed.dart';
part 'bet.g.dart';

@freezed
class Bet with _$Bet {
  const factory Bet({
    required int id,
    required User user,
    required Match match,
    required MatchGoals prediction,
  }) = _Bet;

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);
}
