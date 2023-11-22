import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Team> teamsRepository(TeamsRepositoryRef ref) {
  throw UnimplementedError('teamsRepository');
}
