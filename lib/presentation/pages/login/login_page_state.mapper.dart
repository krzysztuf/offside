// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_page_state.dart';

class LoginPageStateMapper extends ClassMapperBase<LoginPageState> {
  LoginPageStateMapper._();

  static LoginPageStateMapper? _instance;
  static LoginPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginPageStateMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LoginPageState';

  static bool _$loggedIn(LoginPageState v) => v.loggedIn;
  static const Field<LoginPageState, bool> _f$loggedIn = Field(
    'loggedIn',
    _$loggedIn,
    opt: true,
    def: false,
  );
  static bool _$loggingIn(LoginPageState v) => v.loggingIn;
  static const Field<LoginPageState, bool> _f$loggingIn = Field(
    'loggingIn',
    _$loggingIn,
    opt: true,
    def: false,
  );
  static bool _$gettingUserInfo(LoginPageState v) => v.gettingUserInfo;
  static const Field<LoginPageState, bool> _f$gettingUserInfo = Field(
    'gettingUserInfo',
    _$gettingUserInfo,
    opt: true,
    def: true,
  );
  static User? _$user(LoginPageState v) => v.user;
  static const Field<LoginPageState, User> _f$user = Field(
    'user',
    _$user,
    opt: true,
  );

  @override
  final MappableFields<LoginPageState> fields = const {
    #loggedIn: _f$loggedIn,
    #loggingIn: _f$loggingIn,
    #gettingUserInfo: _f$gettingUserInfo,
    #user: _f$user,
  };

  static LoginPageState _instantiate(DecodingData data) {
    return LoginPageState(
      loggedIn: data.dec(_f$loggedIn),
      loggingIn: data.dec(_f$loggingIn),
      gettingUserInfo: data.dec(_f$gettingUserInfo),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LoginPageState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginPageState>(map);
  }

  static LoginPageState fromJson(String json) {
    return ensureInitialized().decodeJson<LoginPageState>(json);
  }
}

mixin LoginPageStateMappable {
  String toJson() {
    return LoginPageStateMapper.ensureInitialized().encodeJson<LoginPageState>(
      this as LoginPageState,
    );
  }

  Map<String, dynamic> toMap() {
    return LoginPageStateMapper.ensureInitialized().encodeMap<LoginPageState>(
      this as LoginPageState,
    );
  }

  LoginPageStateCopyWith<LoginPageState, LoginPageState, LoginPageState>
  get copyWith => _LoginPageStateCopyWithImpl<LoginPageState, LoginPageState>(
    this as LoginPageState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return LoginPageStateMapper.ensureInitialized().stringifyValue(
      this as LoginPageState,
    );
  }

  @override
  bool operator ==(Object other) {
    return LoginPageStateMapper.ensureInitialized().equalsValue(
      this as LoginPageState,
      other,
    );
  }

  @override
  int get hashCode {
    return LoginPageStateMapper.ensureInitialized().hashValue(
      this as LoginPageState,
    );
  }
}

extension LoginPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginPageState, $Out> {
  LoginPageStateCopyWith<$R, LoginPageState, $Out> get $asLoginPageState =>
      $base.as((v, t, t2) => _LoginPageStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginPageStateCopyWith<$R, $In extends LoginPageState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User>? get user;
  $R call({bool? loggedIn, bool? loggingIn, bool? gettingUserInfo, User? user});
  LoginPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _LoginPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginPageState, $Out>
    implements LoginPageStateCopyWith<$R, LoginPageState, $Out> {
  _LoginPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginPageState> $mapper =
      LoginPageStateMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({
    bool? loggedIn,
    bool? loggingIn,
    bool? gettingUserInfo,
    Object? user = $none,
  }) => $apply(
    FieldCopyWithData({
      if (loggedIn != null) #loggedIn: loggedIn,
      if (loggingIn != null) #loggingIn: loggingIn,
      if (gettingUserInfo != null) #gettingUserInfo: gettingUserInfo,
      if (user != $none) #user: user,
    }),
  );
  @override
  LoginPageState $make(CopyWithData data) => LoginPageState(
    loggedIn: data.get(#loggedIn, or: $value.loggedIn),
    loggingIn: data.get(#loggingIn, or: $value.loggingIn),
    gettingUserInfo: data.get(#gettingUserInfo, or: $value.gettingUserInfo),
    user: data.get(#user, or: $value.user),
  );

  @override
  LoginPageStateCopyWith<$R2, LoginPageState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoginPageStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

