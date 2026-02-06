import 'package:offside/domain/entities/match.dart';

abstract interface class OffsideRepository {
  Future<List<Match>> lastSixMatches();

  Future<List<Match>> upcomingMatches();

  Future<List<Match>> matchesHistory();
}
