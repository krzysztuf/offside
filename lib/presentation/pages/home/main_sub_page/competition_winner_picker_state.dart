import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/team.dart';

part 'competition_winner_picker_state.freezed.dart';

@freezed
class CompetitionWinnerPickerState with _$CompetitionWinnerPickerState {
  const factory CompetitionWinnerPickerState({
    Team? winnerPrediction,
    @Default([]) List<Team> teams,
    @Default(true) bool loading,
  }) = _CompetitionWinnerPickerState;

  const CompetitionWinnerPickerState._();
}
