// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginPageState {

 bool get loggedIn; bool get loggingIn; bool get gettingUserInfo; User? get user;
/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPageStateCopyWith<LoginPageState> get copyWith => _$LoginPageStateCopyWithImpl<LoginPageState>(this as LoginPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPageState&&(identical(other.loggedIn, loggedIn) || other.loggedIn == loggedIn)&&(identical(other.loggingIn, loggingIn) || other.loggingIn == loggingIn)&&(identical(other.gettingUserInfo, gettingUserInfo) || other.gettingUserInfo == gettingUserInfo)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,loggedIn,loggingIn,gettingUserInfo,user);

@override
String toString() {
  return 'LoginPageState(loggedIn: $loggedIn, loggingIn: $loggingIn, gettingUserInfo: $gettingUserInfo, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginPageStateCopyWith<$Res>  {
  factory $LoginPageStateCopyWith(LoginPageState value, $Res Function(LoginPageState) _then) = _$LoginPageStateCopyWithImpl;
@useResult
$Res call({
 bool loggedIn, bool loggingIn, bool gettingUserInfo, User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._self, this._then);

  final LoginPageState _self;
  final $Res Function(LoginPageState) _then;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loggedIn = null,Object? loggingIn = null,Object? gettingUserInfo = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
loggedIn: null == loggedIn ? _self.loggedIn : loggedIn // ignore: cast_nullable_to_non_nullable
as bool,loggingIn: null == loggingIn ? _self.loggingIn : loggingIn // ignore: cast_nullable_to_non_nullable
as bool,gettingUserInfo: null == gettingUserInfo ? _self.gettingUserInfo : gettingUserInfo // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginPageState].
extension LoginPageStatePatterns on LoginPageState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPageState value)  $default,){
final _that = this;
switch (_that) {
case _LoginPageState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPageState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loggedIn,  bool loggingIn,  bool gettingUserInfo,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that.loggedIn,_that.loggingIn,_that.gettingUserInfo,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loggedIn,  bool loggingIn,  bool gettingUserInfo,  User? user)  $default,) {final _that = this;
switch (_that) {
case _LoginPageState():
return $default(_that.loggedIn,_that.loggingIn,_that.gettingUserInfo,_that.user);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loggedIn,  bool loggingIn,  bool gettingUserInfo,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that.loggedIn,_that.loggingIn,_that.gettingUserInfo,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _LoginPageState extends LoginPageState {
  const _LoginPageState({this.loggedIn = false, this.loggingIn = false, this.gettingUserInfo = true, this.user}): super._();
  

@override@JsonKey() final  bool loggedIn;
@override@JsonKey() final  bool loggingIn;
@override@JsonKey() final  bool gettingUserInfo;
@override final  User? user;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPageStateCopyWith<_LoginPageState> get copyWith => __$LoginPageStateCopyWithImpl<_LoginPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPageState&&(identical(other.loggedIn, loggedIn) || other.loggedIn == loggedIn)&&(identical(other.loggingIn, loggingIn) || other.loggingIn == loggingIn)&&(identical(other.gettingUserInfo, gettingUserInfo) || other.gettingUserInfo == gettingUserInfo)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,loggedIn,loggingIn,gettingUserInfo,user);

@override
String toString() {
  return 'LoginPageState(loggedIn: $loggedIn, loggingIn: $loggingIn, gettingUserInfo: $gettingUserInfo, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginPageStateCopyWith<$Res> implements $LoginPageStateCopyWith<$Res> {
  factory _$LoginPageStateCopyWith(_LoginPageState value, $Res Function(_LoginPageState) _then) = __$LoginPageStateCopyWithImpl;
@override @useResult
$Res call({
 bool loggedIn, bool loggingIn, bool gettingUserInfo, User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginPageStateCopyWithImpl<$Res>
    implements _$LoginPageStateCopyWith<$Res> {
  __$LoginPageStateCopyWithImpl(this._self, this._then);

  final _LoginPageState _self;
  final $Res Function(_LoginPageState) _then;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loggedIn = null,Object? loggingIn = null,Object? gettingUserInfo = null,Object? user = freezed,}) {
  return _then(_LoginPageState(
loggedIn: null == loggedIn ? _self.loggedIn : loggedIn // ignore: cast_nullable_to_non_nullable
as bool,loggingIn: null == loggingIn ? _self.loggingIn : loggingIn // ignore: cast_nullable_to_non_nullable
as bool,gettingUserInfo: null == gettingUserInfo ? _self.gettingUserInfo : gettingUserInfo // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
