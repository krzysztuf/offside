import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match_goals.dart';

part 'bet.freezed.dart';
part 'bet.g.dart';

@freezed
class Bet with _$Bet {
  const factory Bet({
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(includeToJson: false) String id,
    required String userId,
    required MatchGoals prediction,
  }) = _Bet;

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);
}
