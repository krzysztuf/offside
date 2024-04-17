import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/user.dart';

part 'profile_sub_page_state.freezed.dart';

@freezed
class ProfileSubPageState with _$ProfileSubPageState {
  const factory ProfileSubPageState({
    User? user,
    required bool loading,
  }) = _ProfileSubPageState;

  const ProfileSubPageState._();
}
