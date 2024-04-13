import 'package:offside/core/mapper/auto_mapper.dart';
import 'package:offside/data/models/firestore/bet_model.dart';
import 'package:offside/data/sources/remote/firestore_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/offside_repository.dart';

class OffsideRepositoryImpl implements OffsideRepository {
  @override
  Future<List<Bet>> getUserBets(User user) async {
    final bets = await FirestoreSource.collectionGroup<BetModel>('bets').where('userId', isEqualTo: user.id).get();
    return bets.docs.map((bet) {
      return AutoMapper<BetModel, Bet>().map(bet.data());
    }).toList();
  }
}
