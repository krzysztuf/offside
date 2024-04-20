import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user_score_summary.dart';

part 'main_sub_page_state.freezed.dart';

@freezed
class MainSubPageState with _$MainSubPageState {
  const factory MainSubPageState({
    required List<UserScoreSummary> userScores,
    @Default(true) bool calculating,
    @Default('') String winnerId,
  }) = _MainSubPageState;

  const MainSubPageState._();
}
