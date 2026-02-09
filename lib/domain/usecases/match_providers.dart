import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_providers.g.dart';

@riverpod
Future<List<Match>> recentMatches(Ref ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final now = ref.read(dateTimeProvider);

  final allMatches = await matchesRepository.all();
  final pastMatches = allMatches.where((match) => match.kickOffDate.isBefore(now)).toList();
  pastMatches.sort((a, b) => b.kickOffDate.compareTo(a.kickOffDate));
  return pastMatches.take(6).toList();
}

@riverpod
Future<List<Match>> upcomingMatches(Ref ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final now = ref.read(dateTimeProvider);

  final allMatches = await matchesRepository.all();
  final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
  return allMatches.where((match) => match.kickOffDate.isAfter(midnight)).toList();
}

@riverpod
Future<List<Match>> matchesHistory(Ref ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final now = ref.read(dateTimeProvider);

  final allMatches = await matchesRepository.all();
  final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
  return allMatches.where((match) => match.kickOffDate.isBefore(midnight)).toList();
}

@riverpod
Future<void> placeBet(Ref ref, Match match, Bet bet) async {
  final repository = ref.read(matchBetsRepositoryProvider(match));
  await repository.update(bet);
}

@riverpod
Future<void> updateMatch(Ref ref, Match match) async {
  if (match.id == 0) {
    throw Exception('updateMatch: match id is required');
  }
  final Repository<Match> matchesRepository = ref.read(matchesRepositoryProvider);
  return matchesRepository.update(match);
}
