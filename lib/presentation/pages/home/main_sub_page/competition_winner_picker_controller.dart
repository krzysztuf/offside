import 'package:offside/domain/usecases/teams/teams_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'competition_winner_picker_state.dart';

part 'competition_winner_picker_controller.g.dart';

@riverpod
class CompetitionWinnerPickerController extends _$CompetitionWinnerPickerController {
  @override
  CompetitionWinnerPickerState build() {
    _loadData();
    return const CompetitionWinnerPickerState();
  }

  Future<void> _loadData() async {
    final teams = await ref.read(getAllTeamsUseCaseProvider).run();
    state = state.copyWith(teams: teams, loading: false);
  }
}
