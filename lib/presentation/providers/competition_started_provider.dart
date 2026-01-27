import 'package:offside/presentation/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'date_time_provider.dart';

part 'competition_started_provider.g.dart';

@riverpod
bool competitionStarted(Ref ref) {
  return ref.watch(dateTimeProvider).isAfter(competitionStartDate);
}
