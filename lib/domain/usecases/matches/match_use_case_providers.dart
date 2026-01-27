import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_use_case_providers.g.dart';

@riverpod
GetAllMatchesUseCase getAllMatchesUseCase(Ref ref) {
  return GetAllMatchesUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
PlaceBetUseCase placeBetUseCase(Ref ref, Match match) {
  return PlaceBetUseCase(ref.read(matchBetsRepositoryProvider(match)));
}

@riverpod
UpdateMatchUseCase updateMatchUseCase(Ref ref) {
  return UpdateMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
AddMatchUseCase addMatchUseCase(Ref ref) {
  return AddMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
RemoveMatchUseCase removeMatchUseCase(Ref ref) {
  return RemoveMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
GetRecentMatchesUseCase getRecentMatchesUseCase(Ref ref) {
  return GetRecentMatchesUseCase(ref.watch(offsideRepositoryProvider));
}

@riverpod
GetUpcomingMatchesUseCase getUpcomingMatchesUseCase(Ref ref) {
  return GetUpcomingMatchesUseCase(ref.watch(offsideRepositoryProvider));
}

@riverpod
GetMatchHistoryUseCase getMatchHistoryUseCase(Ref ref) {
  return GetMatchHistoryUseCase(ref.watch(offsideRepositoryProvider));
}
