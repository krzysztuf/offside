import 'package:offside/data/sources/local/memory_repository.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Team> teamsRepository(TeamsRepositoryRef ref) {
  throw UnimplementedError('teamsRepository');
}

@riverpod
Repository<User> usersRepository(UsersRepositoryRef ref) {
  return MemoryRepository<User>(
    items: [
      User(
        id: 1,
        name: 'Krzysztof',
        surname: 'Potrząsaj',
        image: 'assets/images/profile.jpg',
      ),
      User(
        id: 2,
        name: 'Bartek',
        surname: 'Ambrozik',
      ),
      User(
        id: 3,
        name: 'Dominik',
        surname: 'Tomaszewski',
      ),
    ],
  );
}
