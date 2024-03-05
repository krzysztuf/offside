import 'package:offside/presentation/pages/user_page/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  UserPageState build() {
    return const UserPageState(loading: true, match: []);
  }
}
