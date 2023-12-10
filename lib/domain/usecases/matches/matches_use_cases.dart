library matches_use_cases;

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/models/match.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_upcoming_matches.dart';
part 'matches_use_cases.g.dart';

@riverpod
GetUpcomingMatches upcomingMatchesUseCase(UpcomingMatchesUseCaseRef ref) {
  return GetUpcomingMatches(ref.watch(matchesRepositoryProvider));
}
