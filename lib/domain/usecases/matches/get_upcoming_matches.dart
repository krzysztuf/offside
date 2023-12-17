part of 'matches_use_case_providers.dart';

class GetUpcomingMatches implements AsyncUseCase<List<Match>> {
  final Repository<Match> matchesRepository;

  GetUpcomingMatches(this.matchesRepository);

  @override
  Future<List<Match>> run() {
    return matchesRepository.all();
  }
}
