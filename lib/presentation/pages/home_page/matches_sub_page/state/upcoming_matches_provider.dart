import 'package:offside/domain/models/match.dart';
import 'package:offside/domain/usecases/matches/matches_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upcoming_matches_provider.g.dart';

@riverpod
class UpcomingMatches extends _$UpcomingMatches {
  @override
  FutureOr<List<Match>> build() {
    return ref.read(upcomingMatchesUseCaseProvider).run();
  }
}
