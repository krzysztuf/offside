import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  void build() {}

  void addMatch(Match match) {
    ref.invalidate(matchesSubPageControllerProvider);
    ref.read(addMatchUseCaseProvider).run(match);
  }
}
