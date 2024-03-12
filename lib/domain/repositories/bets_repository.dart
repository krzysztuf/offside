import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';

abstract interface class BetsRepository {
  Future<List<Bet>> getUserBets(User userId);
}
