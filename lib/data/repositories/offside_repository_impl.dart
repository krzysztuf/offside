import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/offside_repository.dart';
import 'package:supercharged/supercharged.dart';

class OffsideRepositoryImpl implements OffsideRepository {
  final DateTime now;

  OffsideRepositoryImpl(this.now);

  @override
  Future<List<Bet>> userBets(User user) async {
    final bets = await FirestoreSource.collectionGroup<BetModel>('bets').where('userId', isEqualTo: user.id).get();
    return bets.docs.map((bet) => AutoMapper<BetModel, Bet>().map(bet.data())).toList();
  }

  @override
  Future<List<Match>> upcomingMatches() {
    return FirestoreSource.collectionGroup<MatchModel>('matches')
        .where(
          'kickOffDate',
          isGreaterThan: Timestamp.fromDate(now),
        )
        .get()
        .then((matches) => matches.docs.map((match) => AutoMapper<MatchModel, Match>().map(match.data())).toList());
  }

  @override
  Future<List<Match>> matchesHistory() async {
    final dayBefore = now.subtract(1.days);
    final matches = await FirestoreSource.collectionGroup<MatchModel>('matches')
        .where(
          'kickOffDate',
          isLessThanOrEqualTo: Timestamp.fromDate(dayBefore),
        )
        .get();

    return matches.docs.map((match) => AutoMapper<MatchModel, Match>().map(match.data())).toList();
  }
}
