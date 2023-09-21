import 'dart:developer';

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/models/team.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'teams_provider.g.dart';

@riverpod
class Teams extends _$Teams {
  @override
  Future<List<Team>> build() async {
    final result = await ref.read(teamsRepositoryProvider).all();

    log('result: ${result.length}');
    return result;
  }
}
