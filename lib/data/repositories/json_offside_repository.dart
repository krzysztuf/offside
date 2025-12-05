import 'package:offside/data/sources/json_data_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/offside_repository.dart';

class JsonOffsideRepository implements OffsideRepository {
  final DateTime now;
  final JsonDataSource _dataSource = JsonDataSource.instance;

  JsonOffsideRepository(this.now);

  @override
  Future<List<Bet>> userBets(User user) async {
    return await _dataSource.getBetsForUser(user.firebaseId);
  }

  @override
  Future<List<Match>> lastSixMatches() async {
    final allMatches = await _dataSource.getMatches();
    
    final pastMatches = allMatches
        .where((match) => match.kickOffDate.isBefore(now))
        .toList();
    
    pastMatches.sort((a, b) => b.kickOffDate.compareTo(a.kickOffDate));
    
    return pastMatches.take(6).toList();
  }

  @override
  Future<List<Match>> upcomingMatches() async {
    final allMatches = await _dataSource.getMatches();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    
    return allMatches
        .where((match) => match.kickOffDate.isAfter(midnight))
        .toList();
  }

  @override
  Future<List<Match>> matchesHistory() async {
    final allMatches = await _dataSource.getMatches();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    
    return allMatches
        .where((match) => match.kickOffDate.isBefore(midnight))
        .toList();
  }
}