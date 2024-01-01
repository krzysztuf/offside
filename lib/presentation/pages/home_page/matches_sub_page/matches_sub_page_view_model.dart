import 'package:offside/domain/usecases/matches/matches_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'matches_sub_page_states.dart';

part 'matches_sub_page_view_model.g.dart';

@riverpod
class MatchesSubPageViewModel extends _$MatchesSubPageViewModel {
  @override
  MatchesSubPageState build() {
    ref.read(upcomingMatchesUseCaseProvider).run().then((matches) {
      state = MatchesSubPageState(matches);
    });

    // final db = FirebaseFirestore.instance;
    // db.collection('matches').get().then((values) async {
    //   for (var element in values.docs) {
    //     final home = await (element['homeTeam'] as DocumentReference<Map<String, dynamic>>).get();
    //     log('--- ${element.reference} ${home.data().toString()}');
    //   }
    // });

    // db.doc('teams/poland').get().then((value) => log(value.data().toString()));

    // db.collection('teams').add({
    //   'name': 'France',
    //   'abbreviation': 'FRA',
    // }).then((value) => value.id = 'dupsko');

    // ref.read(allUsersUseCaseProvider).run().then((users) async {
    //   log('got users');
    //   for (final user in users) {
    //     log('adding user: ${user.name}');
    //     db.collection('users').add(user.toJson());
    //   }
    // });

    return MatchesSubPageState([]);
  }
}
