import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/usecases/teams/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teams_provider.g.dart';

@riverpod
class Teams extends _$Teams {
  @override
  Future<List<Team>> build() async {
    return await ref.read(getAllTeamsUseCaseProvider).run();
  }
}
