import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/repositories/bets_repository_impl.dart';
import 'package:offside/data/repositories/firestore_repository.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/bets_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Match> matchesRepository(MatchesRepositoryRef ref) {
  return FirestoreRepository(collection: FirestoreSource.matches);
}

@riverpod
Repository<Bet> matchBetsRepository(MatchBetsRepositoryRef ref, Match match) {
  var path = 'matches/${match.id}/bets';
  return FirestoreRepository(collection: FirestoreSource.typedCollectionRef<BetModel>(path));
}

@riverpod
Repository<Team> teamsRepository(TeamsRepositoryRef ref) {
  return FirestoreRepository(collection: FirestoreSource.teams);
}

@riverpod
Repository<User> usersRepository(UsersRepositoryRef ref) {
  return FirestoreRepository(collection: FirestoreSource.users);
}

@riverpod
BetsRepository betsRepository(BetsRepositoryRef ref) {
  return BetsRepositoryImpl();
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
