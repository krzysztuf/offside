import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
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

class GetRecentMatchesUseCase implements AsyncUseCaseWithParam<List<Match>, bool> {
  final OffsideRepository offsideRepository;

  GetRecentMatchesUseCase(this.offsideRepository);

  @override
  Future<List<Match>> run(bool fetchData) async {
    return await offsideRepository.lastSixMatches();
  }
}
