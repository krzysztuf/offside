import 'dart:developer';

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_history_controller.g.dart';

@riverpod
class MatchesHistoryController extends _$MatchesHistoryController {
  @override
  Future<List<Match>> build() async {
    final matches = await ref.read(offsideRepositoryProvider).matchesHistory();
    log('got matches: $matches');
    return matches;
  }
}
