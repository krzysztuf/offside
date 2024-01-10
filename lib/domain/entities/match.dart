import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/identifiable.dart';

import 'bet.dart';
import 'fetchable.dart';
import 'match_goals.dart';
import 'team.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match implements Identifiable {
  const factory Match({
    @Default('') String id,
    @Default(NoOpFetchable<Team>()) @JsonKey(includeFromJson: false, includeToJson: false) Fetchable<Team> homeTeam,
    @Default(NoOpFetchable<Team>()) @JsonKey(includeFromJson: false, includeToJson: false) Fetchable<Team> awayTeam,
    required DateTime kickOffDate,
    required List<Bet> bets,
    MatchGoals? result,
  }) = _Match;

  const Match._();

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @override
  String get identifier => id;
}
