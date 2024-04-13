import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';

abstract interface class OffsideRepository {
  Future<List<Bet>> getUserBets(User userId);
}
