import 'dart:collection';

import 'package:offside/core/extensions/date_time_extensions.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_history_page_controller.g.dart';

@riverpod
class MatchesHistoryPageController extends _$MatchesHistoryPageController {
  @override
  Future<Map<DateTime, List<Match>>> build() async {
    final matches = await ref.read(offsideRepositoryProvider).matchesHistory();
    return _groupMatchesByDay(matches);
  }

  Map<DateTime, List<Match>> _groupMatchesByDay(List<Match> matches) {
    return matches.fold(SplayTreeMap<DateTime, List<Match>>(), (map, match) {
      map.putIfAbsent(match.kickOffDate.date, () => []).add(match);
      return map;
    });
  }
}
