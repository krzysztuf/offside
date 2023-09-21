import 'package:offside/data/repositories/teams_in_memory_repository.dart';
import 'package:offside/domain/repositories/teams_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
TeamsRepository teamsRepository(TeamsRepositoryRef ref) {
  return TeamsInMemoryRepository();
}
