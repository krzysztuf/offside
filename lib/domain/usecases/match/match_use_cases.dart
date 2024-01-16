library matches_use_cases;

import 'dart:developer';

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_upcoming_matches_use_case.dart';
part 'match_use_cases.g.dart';
part 'place_bet_use_case.dart';

@riverpod
GetUpcomingMatchesUseCase upcomingMatchesUseCase(UpcomingMatchesUseCaseRef ref) {
  return GetUpcomingMatchesUseCase(ref.watch(matchesRepositoryProvider));
}

@riverpod
PlaceBetUseCase placeBetUseCase(PlaceBetUseCaseRef ref, Match match) {
  return PlaceBetUseCase(ref.read(matchBetsRepositoryProvider(match)));
}
