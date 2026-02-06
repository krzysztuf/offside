import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_cases.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
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
RecentMatchesUseCase recentMatchesUseCase(Ref ref) {
  return RecentMatchesUseCase(
    ref.watch(matchesRepositoryProvider),
    ref.read(dateTimeProvider),
  );
}

@riverpod
UpcomingMatchesUseCase upcomingMatchesUseCase(Ref ref) {
  return UpcomingMatchesUseCase(
    ref.watch(matchesRepositoryProvider),
    ref.read(dateTimeProvider),
  );
}

@riverpod
MatchesHistoryUseCase matchesHistoryUseCase(Ref ref) {
  return MatchesHistoryUseCase(
    ref.watch(matchesRepositoryProvider),
    ref.read(dateTimeProvider),
  );
}
