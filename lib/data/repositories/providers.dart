import 'package:offside/data/repositories/json_offside_repository.dart';
import 'package:offside/data/repositories/json_repository.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/repositories/stub_auth_repository.dart';
import 'package:offside/data/repositories/stub_image_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';
import 'package:offside/domain/repositories/image_repository.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Repository<Match> matchesRepository(MatchesRepositoryRef ref) {
  return JsonRepository<Match>();
}

@riverpod
Repository<Bet> matchBetsRepository(MatchBetsRepositoryRef ref, Match match) {
  return JsonRepository<Bet>();
}

@riverpod
Repository<Team> teamsRepository(TeamsRepositoryRef ref) {
  return JsonRepository<Team>();
}

@riverpod
Repository<User> usersRepository(UsersRepositoryRef ref) {
  return JsonRepository<User>();
}

@riverpod
Repository<PrivateTable> privateTablesRepository(PrivateTablesRepositoryRef ref) {
  return JsonRepository<PrivateTable>();
}

@riverpod
OffsideRepository offsideRepository(OffsideRepositoryRef ref) {
  return JsonOffsideRepository(ref.read(dateTimeProvider));
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return StubAuthRepository();
}

@riverpod
ImageRepository imageRepository(ImageRepositoryRef ref) {
  return StubImageRepository();
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
