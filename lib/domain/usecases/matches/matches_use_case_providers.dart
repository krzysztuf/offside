library matches_use_cases;

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_upcoming_matches.dart';
part 'matches_use_case_providers.g.dart';

@riverpod
GetUpcomingMatchesUseCase upcomingMatchesUseCase(UpcomingMatchesUseCaseRef ref) {
  return GetUpcomingMatchesUseCase(ref.watch(matchesRepositoryProvider));
}
