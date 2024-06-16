import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';

abstract interface class OffsideRepository {
  Future<List<Bet>> userBets(User userId);

  Future<List<Match>> lastSixMatches();

  Future<List<Match>> upcomingMatches();

  Future<List<Match>> matchesHistory();
}
