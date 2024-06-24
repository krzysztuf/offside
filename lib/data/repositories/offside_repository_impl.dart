import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/models/firestore/match_model.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/offside_repository.dart';

class OffsideRepositoryImpl implements OffsideRepository {
  final DateTime now;

  OffsideRepositoryImpl(this.now);

  @override
  Future<List<Bet>> userBets(User user) async {
    final bets = await FirestoreSource.collectionGroup<BetModel>('bets').where('userId', isEqualTo: user.id).get();
    return bets.docs.map((bet) => AutoMapper<BetModel, Bet>().map(bet.data())).toList();
  }

  @override
  Future<List<Match>> lastSixMatches() async {
    final matches = await FirestoreSource.matches
        .where('kickOffDate', isLessThanOrEqualTo: Timestamp.fromDate(DateTime.now()))
        .orderBy('kickOffDate', descending: true)
        .limit(6)
        .get();

    return matches.docs.map((match) => AutoMapper<MatchModel, Match>().map(match.data())).toList();
  }

  @override
  Future<List<Match>> upcomingMatches() {
    return FirestoreSource.matches
        .where('kickOffDate', isGreaterThan: Timestamp.fromDate(now.midnight))
        .get()
        .then((matches) => matches.docs.map((match) => AutoMapper<MatchModel, Match>().map(match.data())).toList());
  }

  @override
  Future<List<Match>> matchesHistory() async {
    final matches = await FirestoreSource.collectionGroup<MatchModel>('matches')
        .where('kickOffDate', isLessThanOrEqualTo: Timestamp.fromDate(now.midnight))
        .get();

    return matches.docs.map((match) => AutoMapper<MatchModel, Match>().map(match.data())).toList();
  }
}

extension on DateTime {
  DateTime get midnight => copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
}
