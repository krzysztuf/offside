import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class PlaceBetUseCase implements AsyncUseCaseWithParam<int, Bet> {
  final Repository<Bet> repository;

  PlaceBetUseCase(this.repository);

  @override
  Future<int> run(Bet bet) async {
    if (bet.id != 0) {
      await repository.update(bet);
      return bet.id;
    }

    return await repository.add(bet);
  }
}

class UpdateMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  UpdateMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    if (match.id == 0) {
      throw Exception('UpdateMatchUseCase: match id is required');
    }

    return matchesRepository.update(match);
  }
}

class RecentMatchesUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;
  final DateTime now;

  RecentMatchesUseCase(this.matchesRepository, this.now);

  @override
  Future<List<Match>> run() async {
    final allMatches = await matchesRepository.all();
    final pastMatches = allMatches.where((match) => match.kickOffDate.isBefore(now)).toList();
    pastMatches.sort((a, b) => b.kickOffDate.compareTo(a.kickOffDate));
    return pastMatches.take(6).toList();
  }
}

class UpcomingMatchesUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;
  final DateTime now;

  UpcomingMatchesUseCase(this.matchesRepository, this.now);

  @override
  Future<List<Match>> run() async {
    final allMatches = await matchesRepository.all();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    return allMatches.where((match) => match.kickOffDate.isAfter(midnight)).toList();
  }
}

class MatchesHistoryUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;
  final DateTime now;

  MatchesHistoryUseCase(this.matchesRepository, this.now);

  @override
  Future<List<Match>> run() async {
    final allMatches = await matchesRepository.all();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    return allMatches.where((match) => match.kickOffDate.isBefore(midnight)).toList();
  }
}
