// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPageState {

 User get user; List<Bet> get bets; List<Match> get matches; String get winnerId;
/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPageStateCopyWith<UserPageState> get copyWith => _$UserPageStateCopyWithImpl<UserPageState>(this as UserPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPageState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.bets, bets)&&const DeepCollectionEquality().equals(other.matches, matches)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(bets),const DeepCollectionEquality().hash(matches),winnerId);

@override
String toString() {
  return 'UserPageState(user: $user, bets: $bets, matches: $matches, winnerId: $winnerId)';
}


}

/// @nodoc
abstract mixin class $UserPageStateCopyWith<$Res>  {
  factory $UserPageStateCopyWith(UserPageState value, $Res Function(UserPageState) _then) = _$UserPageStateCopyWithImpl;
@useResult
$Res call({
 User user, List<Bet> bets, List<Match> matches, String winnerId
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$UserPageStateCopyWithImpl<$Res>
    implements $UserPageStateCopyWith<$Res> {
  _$UserPageStateCopyWithImpl(this._self, this._then);

  final UserPageState _self;
  final $Res Function(UserPageState) _then;

/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? bets = null,Object? matches = null,Object? winnerId = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,bets: null == bets ? _self.bets : bets // ignore: cast_nullable_to_non_nullable
as List<Bet>,matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<Match>,winnerId: null == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPageState].
extension UserPageStatePatterns on UserPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPageState value)  $default,){
final _that = this;
switch (_that) {
case _UserPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPageState value)?  $default,){
final _that = this;
switch (_that) {
case _UserPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  List<Bet> bets,  List<Match> matches,  String winnerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPageState() when $default != null:
return $default(_that.user,_that.bets,_that.matches,_that.winnerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  List<Bet> bets,  List<Match> matches,  String winnerId)  $default,) {final _that = this;
switch (_that) {
case _UserPageState():
return $default(_that.user,_that.bets,_that.matches,_that.winnerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  List<Bet> bets,  List<Match> matches,  String winnerId)?  $default,) {final _that = this;
switch (_that) {
case _UserPageState() when $default != null:
return $default(_that.user,_that.bets,_that.matches,_that.winnerId);case _:
  return null;

}
}

}

/// @nodoc


class _UserPageState extends UserPageState {
  const _UserPageState({required this.user, required final  List<Bet> bets, required final  List<Match> matches, required this.winnerId}): _bets = bets,_matches = matches,super._();
  

@override final  User user;
 final  List<Bet> _bets;
@override List<Bet> get bets {
  if (_bets is EqualUnmodifiableListView) return _bets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bets);
}

 final  List<Match> _matches;
@override List<Match> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}

@override final  String winnerId;

/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPageStateCopyWith<_UserPageState> get copyWith => __$UserPageStateCopyWithImpl<_UserPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPageState&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._bets, _bets)&&const DeepCollectionEquality().equals(other._matches, _matches)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_bets),const DeepCollectionEquality().hash(_matches),winnerId);

@override
String toString() {
  return 'UserPageState(user: $user, bets: $bets, matches: $matches, winnerId: $winnerId)';
}


}

/// @nodoc
abstract mixin class _$UserPageStateCopyWith<$Res> implements $UserPageStateCopyWith<$Res> {
  factory _$UserPageStateCopyWith(_UserPageState value, $Res Function(_UserPageState) _then) = __$UserPageStateCopyWithImpl;
@override @useResult
$Res call({
 User user, List<Bet> bets, List<Match> matches, String winnerId
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$UserPageStateCopyWithImpl<$Res>
    implements _$UserPageStateCopyWith<$Res> {
  __$UserPageStateCopyWithImpl(this._self, this._then);

  final _UserPageState _self;
  final $Res Function(_UserPageState) _then;

/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? bets = null,Object? matches = null,Object? winnerId = null,}) {
  return _then(_UserPageState(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,bets: null == bets ? _self._bets : bets // ignore: cast_nullable_to_non_nullable
as List<Bet>,matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<Match>,winnerId: null == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
