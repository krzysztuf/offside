import 'package:offside/data/sources/local/memory_repository.dart';
import 'package:offside/domain/models/match.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Match> matchesRepository(MatchesRepositoryRef ref) {
  return MemoryRepository<Match>(items: [
    Match(
      id: 1,
      homeTeam: Team(id: 0, name: 'Polska', abbreviation: 'POL', kickOffDate: DateTime.now()),
      awayTeam: Team(id: 0, name: 'Niemcy', abbreviation: 'GER', kickOffDate: DateTime.now()),
    ),
    Match(
      id: 1,
      homeTeam: Team(id: 0, name: 'Włochy', abbreviation: 'ITA', kickOffDate: DateTime.now()),
      awayTeam: Team(id: 0, name: 'Anglia', abbreviation: 'ENG', kickOffDate: DateTime.now()),
    ),
  ]);
}

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
