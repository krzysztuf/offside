import 'dart:async';

import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/bets_repository.dart';
import 'package:offside/domain/usecases/async_use_case.dart';

class GetUserBetsUseCase implements AsyncUseCase<List<Bet>> {
  final BetsRepository repository;
  final User user;

  GetUserBetsUseCase(this.repository, this.user);

  @override
  Future<List<Bet>> run() async {
    return await repository.getUserBets(user);
  }
}
