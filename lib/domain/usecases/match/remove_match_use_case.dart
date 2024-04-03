part of 'match_use_cases.dart';

class RemoveMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  RemoveMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    return matchesRepository.remove(match);
  }
}
