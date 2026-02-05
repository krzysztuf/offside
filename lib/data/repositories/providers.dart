import 'package:dio/dio.dart';
import 'package:offside/data/repositories/api_offside_repository.dart';
import 'package:offside/data/repositories/bet_repository.dart';
import 'package:offside/data/repositories/match_repository.dart';
import 'package:offside/data/repositories/private_table_repository.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/repositories/stub_auth_repository.dart';
import 'package:offside/data/repositories/stub_image_repository.dart';
import 'package:offside/data/repositories/team_repository.dart';
import 'package:offside/data/repositories/user_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/data/sources/offside_api.dart';
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

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return Dio();
}

@Riverpod(keepAlive: true)
OffsideApi offsideApi(Ref ref) {
  return OffsideApi(ref.read(dioProvider));
}

@riverpod
Repository<Match> matchesRepository(Ref ref) {
  return MatchRepository(ref.read(offsideApiProvider));
}

@riverpod
Repository<Bet> matchBetsRepository(Ref ref, Match match) {
  return BetRepository(ref.read(offsideApiProvider));
}

@riverpod
Repository<Team> teamsRepository(Ref ref) {
  return TeamRepository(ref.read(offsideApiProvider));
}

@riverpod
Repository<User> usersRepository(Ref ref) {
  return UserRepository(ref.read(offsideApiProvider));
}

@riverpod
Repository<PrivateTable> privateTablesRepository(Ref ref) {
  return PrivateTableRepository(ref.read(offsideApiProvider));
}

@riverpod
OffsideRepository offsideRepository(Ref ref) {
  return ApiOffsideRepository(
    ref.read(dateTimeProvider),
    ref.read(offsideApiProvider),
  );
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return StubAuthRepository(ref.read(offsideApiProvider));
}

@riverpod
ImageRepository imageRepository(Ref ref) {
  return StubImageRepository();
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
