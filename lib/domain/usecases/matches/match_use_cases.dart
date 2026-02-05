import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:offside/domain/repositories/repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

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

class GetRecentMatchesUseCase implements AsyncUseCaseWithParam<List<Match>, bool> {
  final OffsideRepository offsideRepository;

  GetRecentMatchesUseCase(this.offsideRepository);

  @override
  Future<List<Match>> run(bool fetchData) async {
    final matches = await offsideRepository.lastSixMatches();

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
