import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_use_case_providers.g.dart';

@riverpod
GetAllMatchesUseCase getAllMatchesUseCase(GetAllMatchesUseCaseRef ref) {
  return GetAllMatchesUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
PlaceBetUseCase placeBetUseCase(PlaceBetUseCaseRef ref, Match match) {
  return PlaceBetUseCase(ref.read(matchBetsRepositoryProvider(match)));
}

@riverpod
UpdateMatchUseCase updateMatchUseCase(UpdateMatchUseCaseRef ref) {
  return UpdateMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
AddMatchUseCase addMatchUseCase(AddMatchUseCaseRef ref) {
  return AddMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
RemoveMatchUseCase removeMatchUseCase(RemoveMatchUseCaseRef ref) {
  return RemoveMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
GetLastTenMatchesUseCase getLastTenMatchesUseCase(GetLastTenMatchesUseCaseRef ref) {
  return GetLastTenMatchesUseCase(ref.watch(offsideRepositoryProvider));
}
