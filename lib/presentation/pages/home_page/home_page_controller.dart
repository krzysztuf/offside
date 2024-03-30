import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  void build() {}

  void addMatch(Match match) {
    ref.read(addMatchUseCaseProvider).run(match);
  }
}
