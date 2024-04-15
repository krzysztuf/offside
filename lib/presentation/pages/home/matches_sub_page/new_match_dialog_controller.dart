import 'package:offside/domain/usecases/teams/teams_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'new_match_dialog_state.dart';

part 'new_match_dialog_controller.g.dart';

@riverpod
class NewMatchDialogController extends _$NewMatchDialogController {
  @override
  NewMatchDialogState build() {
    ref.read(getAllTeamsUseCaseProvider).run().then((teams) {
      state = state.copyWith(teams: teams, loading: false);
    });

    return const NewMatchDialogState(teams: [], loading: true);
  }
}
