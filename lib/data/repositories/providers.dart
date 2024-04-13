import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/repositories/firestore_repository.dart';
import 'package:offside/data/repositories/offside_repository_impl.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'firebase_auth_repository.dart';

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
OffsideRepository offsideRepository(OffsideRepositoryRef ref) {
  return OffsideRepositoryImpl();
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return FirebaseAuthRepository(ref.watch(usersRepositoryProvider));
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
