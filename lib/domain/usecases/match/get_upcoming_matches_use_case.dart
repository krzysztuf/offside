part of 'match_use_cases.dart';

class GetUpcomingMatchesUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;

  GetUpcomingMatchesUseCase(this.matchesRepository);

  @override
  Future<List<Match>> run() {
    return matchesRepository.all();
  }
}
