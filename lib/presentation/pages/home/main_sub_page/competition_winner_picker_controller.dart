import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/teams/teams_use_cases.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
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

  Future<void> selectWinner(User user, Team team) async {
    state = state.copyWith(saving: true);
    await Future.delayed(const Duration(seconds: 1));
    await ref.read(updateUserUseCaseProvider).run(user.copyWith(winnerPredictionId: team.id));
    state = state.copyWith(winnerPrediction: team, saving: false);
  }
}
