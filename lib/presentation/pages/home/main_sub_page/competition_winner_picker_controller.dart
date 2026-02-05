import 'package:collection/collection.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'competition_winner_picker_state.dart';

part 'competition_winner_picker_controller.g.dart';

@riverpod
class CompetitionWinnerPickerController extends _$CompetitionWinnerPickerController {
  late User user;

  @override
  CompetitionWinnerPickerState build() {
    _loadData();
    return const CompetitionWinnerPickerState();
  }

  Future<void> _loadData() async {
    switch (ref.watch(currentUserProvider)) {
      case AsyncData(value: final currentUser):
        await buildFinalState(currentUser);
        break;
      default:
        return;
    }

    state = state.copyWith(loading: false);
  }

  Future<void> buildFinalState(User? currentUser) async {
    user = currentUser!;
    final teams = await ref.read(teamsRepositoryProvider).all();
    final winnerPrediction = teams.firstWhereOrNull((team) => team.id == currentUser.winnerPredictionId);
    state = state.copyWith(teams: teams, loading: false, winnerPrediction: winnerPrediction);
  }

  Future<void> selectWinner(Team team) async {
    state = state.copyWith(saving: true);
    await Future.delayed(const Duration(seconds: 1));
    await ref.read(usersRepositoryProvider).update(user.copyWith(winnerPredictionId: team.id));
    state = state.copyWith(winnerPrediction: team, saving: false);
  }
}
