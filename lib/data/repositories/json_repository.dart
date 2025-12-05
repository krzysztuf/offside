import 'package:offside/data/sources/json_data_source.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class JsonRepository<T> implements Repository<T> {
  final JsonDataSource _dataSource = JsonDataSource.instance;

  @override
  Future<List<T>> all() async {
    if (T == User) {
      return (await _dataSource.getUsers()) as List<T>;
    } else if (T == Match) {
      return (await _dataSource.getMatches()) as List<T>;
    } else if (T == Bet) {
      return (await _dataSource.getBets()) as List<T>;
    } else if (T == Team) {
      return (await _dataSource.getTeams()) as List<T>;
    } else if (T == PrivateTable) {
      return (await _dataSource.getTables()) as List<T>;
    }
    return [];
  }

  @override
  Future<List<T>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<String> add(T item) async {
    return 'stub-id';
  }

  @override
  Future<T?> byId(String id) async {
    if (T == User) {
      return (await _dataSource.getUserById(id)) as T?;
    } else if (T == Team) {
      return (await _dataSource.getTeamById(id)) as T?;
    }
    
    final allItems = await all();
    try {
      return allItems.firstWhere((item) {
        if (item is User) return item.firebaseId == id;
        if (item is Match) return item.id == id;
        if (item is Bet) return item.id == id;
        if (item is Team) return item.id == id;
        if (item is PrivateTable) return item.id == id;
        return false;
      });
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<T>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    final allItems = await all();
    return allItems.where((item) {
      if (field == 'userId' && isEqualTo != null && T == Bet) {
        return (item as Bet).userId == isEqualTo;
      }
      if (field == 'matchId' && isEqualTo != null && T == Bet) {
        return (item as Bet).matchId == isEqualTo;
      }
      return true;
    }).toList();
  }

  @override
  Future<void> remove(T item) async {
  }

  @override
  Future<void> update(T item) async {
  }

  @override
  Future<void> clear() async {
  }
}