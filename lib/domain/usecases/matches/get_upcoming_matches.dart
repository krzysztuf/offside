part of 'matches_use_cases.dart';

class GetUpcomingMatches {
  final Repository<Match> matchesRepository;

  GetUpcomingMatches(this.matchesRepository);

  Future<List<Match>> run() {
    return matchesRepository.all();
  }
}
