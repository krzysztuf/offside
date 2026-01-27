// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bets_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchBetsState {

 bool get loading; Match get match; List<UserPrediction> get bets;
/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchBetsStateCopyWith<MatchBetsState> get copyWith => _$MatchBetsStateCopyWithImpl<MatchBetsState>(this as MatchBetsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchBetsState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.match, match) || other.match == match)&&const DeepCollectionEquality().equals(other.bets, bets));
}


@override
int get hashCode => Object.hash(runtimeType,loading,match,const DeepCollectionEquality().hash(bets));

@override
String toString() {
  return 'MatchBetsState(loading: $loading, match: $match, bets: $bets)';
}


}

/// @nodoc
abstract mixin class $MatchBetsStateCopyWith<$Res>  {
  factory $MatchBetsStateCopyWith(MatchBetsState value, $Res Function(MatchBetsState) _then) = _$MatchBetsStateCopyWithImpl;
@useResult
$Res call({
 bool loading, Match match, List<UserPrediction> bets
});


$MatchCopyWith<$Res> get match;

}
/// @nodoc
class _$MatchBetsStateCopyWithImpl<$Res>
    implements $MatchBetsStateCopyWith<$Res> {
  _$MatchBetsStateCopyWithImpl(this._self, this._then);

  final MatchBetsState _self;
  final $Res Function(MatchBetsState) _then;

/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? match = null,Object? bets = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as Match,bets: null == bets ? _self.bets : bets // ignore: cast_nullable_to_non_nullable
as List<UserPrediction>,
  ));
}
/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCopyWith<$Res> get match {
  
  return $MatchCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchBetsState].
extension MatchBetsStatePatterns on MatchBetsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchBetsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchBetsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchBetsState value)  $default,){
final _that = this;
switch (_that) {
case _MatchBetsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchBetsState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchBetsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  Match match,  List<UserPrediction> bets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchBetsState() when $default != null:
return $default(_that.loading,_that.match,_that.bets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  Match match,  List<UserPrediction> bets)  $default,) {final _that = this;
switch (_that) {
case _MatchBetsState():
return $default(_that.loading,_that.match,_that.bets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  Match match,  List<UserPrediction> bets)?  $default,) {final _that = this;
switch (_that) {
case _MatchBetsState() when $default != null:
return $default(_that.loading,_that.match,_that.bets);case _:
  return null;

}
}

}

/// @nodoc


class _MatchBetsState extends MatchBetsState {
  const _MatchBetsState({required this.loading, required this.match, final  List<UserPrediction> bets = const []}): _bets = bets,super._();
  

@override final  bool loading;
@override final  Match match;
 final  List<UserPrediction> _bets;
@override@JsonKey() List<UserPrediction> get bets {
  if (_bets is EqualUnmodifiableListView) return _bets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bets);
}


/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchBetsStateCopyWith<_MatchBetsState> get copyWith => __$MatchBetsStateCopyWithImpl<_MatchBetsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchBetsState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.match, match) || other.match == match)&&const DeepCollectionEquality().equals(other._bets, _bets));
}


@override
int get hashCode => Object.hash(runtimeType,loading,match,const DeepCollectionEquality().hash(_bets));

@override
String toString() {
  return 'MatchBetsState(loading: $loading, match: $match, bets: $bets)';
}


}

/// @nodoc
abstract mixin class _$MatchBetsStateCopyWith<$Res> implements $MatchBetsStateCopyWith<$Res> {
  factory _$MatchBetsStateCopyWith(_MatchBetsState value, $Res Function(_MatchBetsState) _then) = __$MatchBetsStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, Match match, List<UserPrediction> bets
});


@override $MatchCopyWith<$Res> get match;

}
/// @nodoc
class __$MatchBetsStateCopyWithImpl<$Res>
    implements _$MatchBetsStateCopyWith<$Res> {
  __$MatchBetsStateCopyWithImpl(this._self, this._then);

  final _MatchBetsState _self;
  final $Res Function(_MatchBetsState) _then;

/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? match = null,Object? bets = null,}) {
  return _then(_MatchBetsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as Match,bets: null == bets ? _self._bets : bets // ignore: cast_nullable_to_non_nullable
as List<UserPrediction>,
  ));
}

/// Create a copy of MatchBetsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCopyWith<$Res> get match {
  
  return $MatchCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}

// dart format on
