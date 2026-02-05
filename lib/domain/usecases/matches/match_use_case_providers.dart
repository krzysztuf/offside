import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_use_case_providers.g.dart';

@riverpod
PlaceBetUseCase placeBetUseCase(Ref ref, Match match) {
  return PlaceBetUseCase(ref.read(matchBetsRepositoryProvider(match)));
}

@riverpod
UpdateMatchUseCase updateMatchUseCase(Ref ref) {
  return UpdateMatchUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
GetRecentMatchesUseCase getRecentMatchesUseCase(Ref ref) {
  return GetRecentMatchesUseCase(ref.watch(offsideRepositoryProvider));
}
