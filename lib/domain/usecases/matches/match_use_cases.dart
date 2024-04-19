import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class AddMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  AddMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    return matchesRepository.add(match);
  }
}

class GetAllMatchesUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;

  GetAllMatchesUseCase(this.matchesRepository);

  @override
  Future<List<Match>> run() {
    return matchesRepository.all();
  }
}

class PlaceBetUseCase implements AsyncUseCaseWithParam<String, Bet> {
  final Repository<Bet> repository;

  PlaceBetUseCase(this.repository);

  @override
  Future<String> run(Bet bet) async {
    if (bet.id.isNotEmpty) {
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
    if (match.id.isEmpty) {
      throw Exception('UpdateMatchUseCase: match id is required');
    }

    return matchesRepository.update(match);
  }
}

class RemoveMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  RemoveMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    return matchesRepository.remove(match);
  }
}

class GetRecentMatchesUseCase implements AsyncUseCaseWithParam<List<Match>, bool> {
  final OffsideRepository offsideRepository;

  GetRecentMatchesUseCase(this.offsideRepository);

  @override
  Future<List<Match>> run(bool fetchData) async {
    final matches = await offsideRepository.lastTenMatches();
    if (fetchData) {
      await Future.wait([
        ...matches.map((m) => m.bets.fetch()),
        ...matches.map((m) => m.homeTeam.fetch()),
        ...matches.map((m) => m.awayTeam.fetch()),
      ]);
    }

    return matches;
  }
}
