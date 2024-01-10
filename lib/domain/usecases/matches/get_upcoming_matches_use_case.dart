part of 'matches_use_case_providers.dart';

class GetUpcomingMatchesUseCase implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;

  GetUpcomingMatchesUseCase(this.matchesRepository);

  @override
  Future<List<Match>> run() {
    return matchesRepository.all();
  }
}
