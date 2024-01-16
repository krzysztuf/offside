part of 'match_use_cases.dart';

class PlaceBetUseCase implements AsyncUseCaseWithParam<String, Bet> {
  final Repository<Bet> repository;

  PlaceBetUseCase(this.repository);

  @override
  Future<String> run(Bet bet) async {
    if (bet.id.isNotEmpty) {
      await repository.update(bet);
      return bet.id;
    }

    return await repository.add(bet);
  }
}
