import 'package:offside/data/repositories/firebase_repository.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/sources/local/memory_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Match> matchesRepository(MatchesRepositoryRef ref) {
  return MemoryRepository<Match>(items: [
    Match(
      homeTeam: Team(name: 'Polska', abbreviation: 'POL'),
      awayTeam: Team(name: 'Niemcy', abbreviation: 'GER'),
      kickOffDate: DateTime(2024, 6, 17, 17),
    ),
    Match(
      homeTeam: Team(name: 'Włochy', abbreviation: 'ITA'),
      awayTeam: Team(name: 'Anglia', abbreviation: 'ENG'),
      kickOffDate: DateTime(2024, 6, 17, 17),
    ),
  ]);
}

@riverpod
Repository<Team> teamsRepository(TeamsRepositoryRef ref) {
  throw UnimplementedError('teamsRepository');
}

@riverpod
Repository<User> usersRepository(UsersRepositoryRef ref) {
  return FirebaseRepository(
    'users',
    fromDocument: (document) => User.fromJson(document.data()!).copyWith(id: document.id),
  );
}

@riverpod
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
