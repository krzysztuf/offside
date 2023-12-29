import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_goals.freezed.dart';
part 'match_goals.g.dart';

@freezed
class MatchGoals with _$MatchGoals {
  const factory MatchGoals({
    required int home,
    required int away,
  }) = _MatchGoals;

  const MatchGoals._();

  factory MatchGoals.fromJson(Map<String, dynamic> json) => _$MatchGoalsFromJson(json);
}
