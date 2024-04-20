import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user_score_summary.dart';

part 'main_table_state.freezed.dart';

@freezed
class MainTableState with _$MainTableState {
  const factory MainTableState({
    required List<UserScoreSummary> userScores,
    @Default(true) bool calculating,
    @Default('') String winnerId,
  }) = _MainTableState;

  const MainTableState._();
}
