// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_sub_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileSubPageState {

 User? get user; bool get loading; bool get uploading;
/// Create a copy of ProfileSubPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSubPageStateCopyWith<ProfileSubPageState> get copyWith => _$ProfileSubPageStateCopyWithImpl<ProfileSubPageState>(this as ProfileSubPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSubPageState&&(identical(other.user, user) || other.user == user)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.uploading, uploading) || other.uploading == uploading));
}


@override
int get hashCode => Object.hash(runtimeType,user,loading,uploading);

@override
String toString() {
  return 'ProfileSubPageState(user: $user, loading: $loading, uploading: $uploading)';
}


}

/// @nodoc
abstract mixin class $ProfileSubPageStateCopyWith<$Res>  {
  factory $ProfileSubPageStateCopyWith(ProfileSubPageState value, $Res Function(ProfileSubPageState) _then) = _$ProfileSubPageStateCopyWithImpl;
@useResult
$Res call({
 User? user, bool loading, bool uploading
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileSubPageStateCopyWithImpl<$Res>
    implements $ProfileSubPageStateCopyWith<$Res> {
  _$ProfileSubPageStateCopyWithImpl(this._self, this._then);

  final ProfileSubPageState _self;
  final $Res Function(ProfileSubPageState) _then;

/// Create a copy of ProfileSubPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? loading = null,Object? uploading = null,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,uploading: null == uploading ? _self.uploading : uploading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProfileSubPageState
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


/// Adds pattern-matching-related methods to [ProfileSubPageState].
extension ProfileSubPageStatePatterns on ProfileSubPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSubPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSubPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSubPageState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSubPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSubPageState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSubPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  bool loading,  bool uploading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSubPageState() when $default != null:
return $default(_that.user,_that.loading,_that.uploading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  bool loading,  bool uploading)  $default,) {final _that = this;
switch (_that) {
case _ProfileSubPageState():
return $default(_that.user,_that.loading,_that.uploading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  bool loading,  bool uploading)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSubPageState() when $default != null:
return $default(_that.user,_that.loading,_that.uploading);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileSubPageState extends ProfileSubPageState {
  const _ProfileSubPageState({this.user, required this.loading, this.uploading = false}): super._();
  

@override final  User? user;
@override final  bool loading;
@override@JsonKey() final  bool uploading;

/// Create a copy of ProfileSubPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSubPageStateCopyWith<_ProfileSubPageState> get copyWith => __$ProfileSubPageStateCopyWithImpl<_ProfileSubPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSubPageState&&(identical(other.user, user) || other.user == user)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.uploading, uploading) || other.uploading == uploading));
}


@override
int get hashCode => Object.hash(runtimeType,user,loading,uploading);

@override
String toString() {
  return 'ProfileSubPageState(user: $user, loading: $loading, uploading: $uploading)';
}


}

/// @nodoc
abstract mixin class _$ProfileSubPageStateCopyWith<$Res> implements $ProfileSubPageStateCopyWith<$Res> {
  factory _$ProfileSubPageStateCopyWith(_ProfileSubPageState value, $Res Function(_ProfileSubPageState) _then) = __$ProfileSubPageStateCopyWithImpl;
@override @useResult
$Res call({
 User? user, bool loading, bool uploading
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$ProfileSubPageStateCopyWithImpl<$Res>
    implements _$ProfileSubPageStateCopyWith<$Res> {
  __$ProfileSubPageStateCopyWithImpl(this._self, this._then);

  final _ProfileSubPageState _self;
  final $Res Function(_ProfileSubPageState) _then;

/// Create a copy of ProfileSubPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? loading = null,Object? uploading = null,}) {
  return _then(_ProfileSubPageState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,uploading: null == uploading ? _self.uploading : uploading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProfileSubPageState
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
