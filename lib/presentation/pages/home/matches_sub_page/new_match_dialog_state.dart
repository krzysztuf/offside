import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/team.dart';

part 'new_match_dialog_state.mapper.dart';

@MappableClass()
class NewMatchDialogState with NewMatchDialogStateMappable {
  final List<Team> teams;
  final bool loading;

  const NewMatchDialogState({
    required this.teams,
    required this.loading,
  });
}
