import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/team.dart';

part 'competition_winner_picker_state.mapper.dart';

@MappableClass()
class CompetitionWinnerPickerState with CompetitionWinnerPickerStateMappable {
  final Team? winnerPrediction;
  final List<Team> teams;
  final bool loading;
  final bool saving;

  const CompetitionWinnerPickerState({
    this.winnerPrediction,
    this.teams = const [],
    this.loading = true,
    this.saving = false,
  });
}
