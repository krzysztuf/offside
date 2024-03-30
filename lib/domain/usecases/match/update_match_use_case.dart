part of 'match_use_cases.dart';

class UpdateMatchUseCase implements AsyncUseCaseWithParam<void, Match> {
  final Repository<Match> matchesRepository;

  UpdateMatchUseCase(this.matchesRepository);

  @override
  Future<void> run(Match match) {
    if (match.id.isEmpty) {
      throw Exception('UpdateMatchUseCase: match id is required');
    }

    log('updating match: ${match}');
    return matchesRepository.update(match);
  }
}
