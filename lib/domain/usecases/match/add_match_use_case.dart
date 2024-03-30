part of 'match_use_cases.dart';

class AddMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  AddMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    return matchesRepository.add(match);
  }
}
