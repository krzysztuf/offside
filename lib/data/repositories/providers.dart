import 'package:dio/dio.dart';
import 'package:offside/data/repositories/api_offside_repository.dart';
import 'package:offside/data/repositories/api_repository.dart';
import 'package:offside/data/repositories/shared_preferences_repository.dart';
import 'package:offside/data/repositories/stub_auth_repository.dart';
import 'package:offside/data/repositories/stub_image_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/data/sources/offside_api_data_source.dart';
import 'package:offside/data/sources/offside_api_service.dart';
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
OffsideApiService offsideApiService(Ref ref) {
  return OffsideApiService(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
OffsideApiDataSource offsideApiDataSource(Ref ref) {
  return OffsideApiDataSource(ref.read(offsideApiServiceProvider));
}

@riverpod
Repository<Match> matchesRepository(Ref ref) {
  return ApiRepository<Match>(ref.read(offsideApiDataSourceProvider));
}

@riverpod
Repository<Bet> matchBetsRepository(Ref ref, Match match) {
  return ApiRepository<Bet>(ref.read(offsideApiDataSourceProvider));
}

@riverpod
Repository<Team> teamsRepository(Ref ref) {
  return ApiRepository<Team>(ref.read(offsideApiDataSourceProvider));
}

@riverpod
Repository<User> usersRepository(Ref ref) {
  return ApiRepository<User>(ref.read(offsideApiDataSourceProvider));
}

@riverpod
Repository<PrivateTable> privateTablesRepository(Ref ref) {
  return ApiRepository<PrivateTable>(ref.read(offsideApiDataSourceProvider));
}

@riverpod
OffsideRepository offsideRepository(Ref ref) {
  return ApiOffsideRepository(
    ref.read(dateTimeProvider),
    ref.read(offsideApiDataSourceProvider),
  );
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return StubAuthRepository(ref.read(offsideApiDataSourceProvider));
}

@riverpod
ImageRepository imageRepository(Ref ref) {
  return StubImageRepository();
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  return SharedPreferencesRepository(SharedPreferencesHolder.preferences);
}
