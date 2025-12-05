// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginPageState {
  bool get loggedIn => throw _privateConstructorUsedError;
  bool get loggingIn => throw _privateConstructorUsedError;
  bool get gettingUserInfo => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPageStateCopyWith<LoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res, LoginPageState>;
  @useResult
  $Res call({bool loggedIn, bool loggingIn, bool gettingUserInfo, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res, $Val extends LoginPageState>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? loggingIn = null,
    Object? gettingUserInfo = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loggingIn: null == loggingIn
          ? _value.loggingIn
          : loggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingUserInfo: null == gettingUserInfo
          ? _value.gettingUserInfo
          : gettingUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginPageStateImplCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$LoginPageStateImplCopyWith(_$LoginPageStateImpl value,
          $Res Function(_$LoginPageStateImpl) then) =
      __$$LoginPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loggedIn, bool loggingIn, bool gettingUserInfo, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginPageStateImplCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateImpl>
    implements _$$LoginPageStateImplCopyWith<$Res> {
  __$$LoginPageStateImplCopyWithImpl(
      _$LoginPageStateImpl _value, $Res Function(_$LoginPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? loggingIn = null,
    Object? gettingUserInfo = null,
    Object? user = freezed,
  }) {
    return _then(_$LoginPageStateImpl(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loggingIn: null == loggingIn
          ? _value.loggingIn
          : loggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingUserInfo: null == gettingUserInfo
          ? _value.gettingUserInfo
          : gettingUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$LoginPageStateImpl extends _LoginPageState {
  const _$LoginPageStateImpl(
      {this.loggedIn = false,
      this.loggingIn = false,
      this.gettingUserInfo = true,
      this.user})
      : super._();

  @override
  @JsonKey()
  final bool loggedIn;
  @override
  @JsonKey()
  final bool loggingIn;
  @override
  @JsonKey()
  final bool gettingUserInfo;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginPageState(loggedIn: $loggedIn, loggingIn: $loggingIn, gettingUserInfo: $gettingUserInfo, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateImpl &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.loggingIn, loggingIn) ||
                other.loggingIn == loggingIn) &&
            (identical(other.gettingUserInfo, gettingUserInfo) ||
                other.gettingUserInfo == gettingUserInfo) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loggedIn, loggingIn, gettingUserInfo, user);

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageStateImplCopyWith<_$LoginPageStateImpl> get copyWith =>
      __$$LoginPageStateImplCopyWithImpl<_$LoginPageStateImpl>(
          this, _$identity);
}

abstract class _LoginPageState extends LoginPageState {
  const factory _LoginPageState(
      {final bool loggedIn,
      final bool loggingIn,
      final bool gettingUserInfo,
      final User? user}) = _$LoginPageStateImpl;
  const _LoginPageState._() : super._();

  @override
  bool get loggedIn;
  @override
  bool get loggingIn;
  @override
  bool get gettingUserInfo;
  @override
  User? get user;

  /// Create a copy of LoginPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPageStateImplCopyWith<_$LoginPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
