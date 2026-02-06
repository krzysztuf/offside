// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile_sub_page_state.dart';

class ProfileSubPageStateMapper extends ClassMapperBase<ProfileSubPageState> {
  ProfileSubPageStateMapper._();

  static ProfileSubPageStateMapper? _instance;
  static ProfileSubPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProfileSubPageStateMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProfileSubPageState';

  static User? _$user(ProfileSubPageState v) => v.user;
  static const Field<ProfileSubPageState, User> _f$user = Field(
    'user',
    _$user,
    opt: true,
  );
  static bool _$loading(ProfileSubPageState v) => v.loading;
  static const Field<ProfileSubPageState, bool> _f$loading = Field(
    'loading',
    _$loading,
  );
  static bool _$uploading(ProfileSubPageState v) => v.uploading;
  static const Field<ProfileSubPageState, bool> _f$uploading = Field(
    'uploading',
    _$uploading,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<ProfileSubPageState> fields = const {
    #user: _f$user,
    #loading: _f$loading,
    #uploading: _f$uploading,
  };

  static ProfileSubPageState _instantiate(DecodingData data) {
    return ProfileSubPageState(
      user: data.dec(_f$user),
      loading: data.dec(_f$loading),
      uploading: data.dec(_f$uploading),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProfileSubPageState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProfileSubPageState>(map);
  }

  static ProfileSubPageState fromJson(String json) {
    return ensureInitialized().decodeJson<ProfileSubPageState>(json);
  }
}

mixin ProfileSubPageStateMappable {
  String toJson() {
    return ProfileSubPageStateMapper.ensureInitialized()
        .encodeJson<ProfileSubPageState>(this as ProfileSubPageState);
  }

  Map<String, dynamic> toMap() {
    return ProfileSubPageStateMapper.ensureInitialized()
        .encodeMap<ProfileSubPageState>(this as ProfileSubPageState);
  }

  ProfileSubPageStateCopyWith<
    ProfileSubPageState,
    ProfileSubPageState,
    ProfileSubPageState
  >
  get copyWith =>
      _ProfileSubPageStateCopyWithImpl<
        ProfileSubPageState,
        ProfileSubPageState
      >(this as ProfileSubPageState, $identity, $identity);
  @override
  String toString() {
    return ProfileSubPageStateMapper.ensureInitialized().stringifyValue(
      this as ProfileSubPageState,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProfileSubPageStateMapper.ensureInitialized().equalsValue(
      this as ProfileSubPageState,
      other,
    );
  }

  @override
  int get hashCode {
    return ProfileSubPageStateMapper.ensureInitialized().hashValue(
      this as ProfileSubPageState,
    );
  }
}

extension ProfileSubPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProfileSubPageState, $Out> {
  ProfileSubPageStateCopyWith<$R, ProfileSubPageState, $Out>
  get $asProfileSubPageState => $base.as(
    (v, t, t2) => _ProfileSubPageStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ProfileSubPageStateCopyWith<
  $R,
  $In extends ProfileSubPageState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User>? get user;
  $R call({User? user, bool? loading, bool? uploading});
  ProfileSubPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProfileSubPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProfileSubPageState, $Out>
    implements ProfileSubPageStateCopyWith<$R, ProfileSubPageState, $Out> {
  _ProfileSubPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProfileSubPageState> $mapper =
      ProfileSubPageStateMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({Object? user = $none, bool? loading, bool? uploading}) => $apply(
    FieldCopyWithData({
      if (user != $none) #user: user,
      if (loading != null) #loading: loading,
      if (uploading != null) #uploading: uploading,
    }),
  );
  @override
  ProfileSubPageState $make(CopyWithData data) => ProfileSubPageState(
    user: data.get(#user, or: $value.user),
    loading: data.get(#loading, or: $value.loading),
    uploading: data.get(#uploading, or: $value.uploading),
  );

  @override
  ProfileSubPageStateCopyWith<$R2, ProfileSubPageState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProfileSubPageStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

