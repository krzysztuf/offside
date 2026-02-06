import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user.dart';

part 'profile_sub_page_state.mapper.dart';

@MappableClass()
class ProfileSubPageState with ProfileSubPageStateMappable {
  final User? user;
  final bool loading;
  final bool uploading;

  const ProfileSubPageState({
    this.user,
    required this.loading,
    this.uploading = false,
  });
}
