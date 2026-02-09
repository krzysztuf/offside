import 'package:offside/data/repositories/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
Future<int> logIn(Ref ref, String username, String password) async {
  final authRepository = ref.read(authRepositoryProvider);
  try {
    final user = await authRepository.logIn(username, password);
    return user.id;
  } catch (e) {
    throw Exception(e.toString());
  }
}
