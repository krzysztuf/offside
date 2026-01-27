import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/team.dart';

part 'new_match_dialog_state.freezed.dart';

@freezed
sealed class NewMatchDialogState with _$NewMatchDialogState {
  const factory NewMatchDialogState({
    required List<Team> teams,
    required bool loading,
  }) = _NewMatchDialogState;

  const NewMatchDialogState._();
}
