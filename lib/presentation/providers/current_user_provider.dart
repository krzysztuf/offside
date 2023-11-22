import 'package:offside/domain/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  User build() {
    return const User(
      id: 1,
      name: 'Krzysztof',
      surname: 'Potrząsaj',
      image: 'assets/images/profile.jpg',
    );
  }
}
