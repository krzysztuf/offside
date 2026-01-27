// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchCardState {

 Match get match; Bet? get bet; BetState get betState; bool get loading;
/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchCardStateCopyWith<MatchCardState> get copyWith => _$MatchCardStateCopyWithImpl<MatchCardState>(this as MatchCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchCardState&&(identical(other.match, match) || other.match == match)&&(identical(other.bet, bet) || other.bet == bet)&&(identical(other.betState, betState) || other.betState == betState)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,match,bet,betState,loading);

@override
String toString() {
  return 'MatchCardState(match: $match, bet: $bet, betState: $betState, loading: $loading)';
}


}

/// @nodoc
abstract mixin class $MatchCardStateCopyWith<$Res>  {
  factory $MatchCardStateCopyWith(MatchCardState value, $Res Function(MatchCardState) _then) = _$MatchCardStateCopyWithImpl;
@useResult
$Res call({
 Match match, Bet? bet, BetState betState, bool loading
});


$MatchCopyWith<$Res> get match;$BetCopyWith<$Res>? get bet;

}
/// @nodoc
class _$MatchCardStateCopyWithImpl<$Res>
    implements $MatchCardStateCopyWith<$Res> {
  _$MatchCardStateCopyWithImpl(this._self, this._then);

  final MatchCardState _self;
  final $Res Function(MatchCardState) _then;

/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? match = null,Object? bet = freezed,Object? betState = null,Object? loading = null,}) {
  return _then(_self.copyWith(
match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as Match,bet: freezed == bet ? _self.bet : bet // ignore: cast_nullable_to_non_nullable
as Bet?,betState: null == betState ? _self.betState : betState // ignore: cast_nullable_to_non_nullable
as BetState,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCopyWith<$Res> get match {
  
  return $MatchCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BetCopyWith<$Res>? get bet {
    if (_self.bet == null) {
    return null;
  }

  return $BetCopyWith<$Res>(_self.bet!, (value) {
    return _then(_self.copyWith(bet: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchCardState].
extension MatchCardStatePatterns on MatchCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchCardState value)  $default,){
final _that = this;
switch (_that) {
case _MatchCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchCardState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Match match,  Bet? bet,  BetState betState,  bool loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchCardState() when $default != null:
return $default(_that.match,_that.bet,_that.betState,_that.loading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Match match,  Bet? bet,  BetState betState,  bool loading)  $default,) {final _that = this;
switch (_that) {
case _MatchCardState():
return $default(_that.match,_that.bet,_that.betState,_that.loading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Match match,  Bet? bet,  BetState betState,  bool loading)?  $default,) {final _that = this;
switch (_that) {
case _MatchCardState() when $default != null:
return $default(_that.match,_that.bet,_that.betState,_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _MatchCardState extends MatchCardState {
  const _MatchCardState({required this.match, this.bet, this.betState = BetState.notPlaced, this.loading = false}): super._();
  

@override final  Match match;
@override final  Bet? bet;
@override@JsonKey() final  BetState betState;
@override@JsonKey() final  bool loading;

/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchCardStateCopyWith<_MatchCardState> get copyWith => __$MatchCardStateCopyWithImpl<_MatchCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchCardState&&(identical(other.match, match) || other.match == match)&&(identical(other.bet, bet) || other.bet == bet)&&(identical(other.betState, betState) || other.betState == betState)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,match,bet,betState,loading);

@override
String toString() {
  return 'MatchCardState(match: $match, bet: $bet, betState: $betState, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$MatchCardStateCopyWith<$Res> implements $MatchCardStateCopyWith<$Res> {
  factory _$MatchCardStateCopyWith(_MatchCardState value, $Res Function(_MatchCardState) _then) = __$MatchCardStateCopyWithImpl;
@override @useResult
$Res call({
 Match match, Bet? bet, BetState betState, bool loading
});


@override $MatchCopyWith<$Res> get match;@override $BetCopyWith<$Res>? get bet;

}
/// @nodoc
class __$MatchCardStateCopyWithImpl<$Res>
    implements _$MatchCardStateCopyWith<$Res> {
  __$MatchCardStateCopyWithImpl(this._self, this._then);

  final _MatchCardState _self;
  final $Res Function(_MatchCardState) _then;

/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? match = null,Object? bet = freezed,Object? betState = null,Object? loading = null,}) {
  return _then(_MatchCardState(
match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as Match,bet: freezed == bet ? _self.bet : bet // ignore: cast_nullable_to_non_nullable
as Bet?,betState: null == betState ? _self.betState : betState // ignore: cast_nullable_to_non_nullable
as BetState,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCopyWith<$Res> get match {
  
  return $MatchCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}/// Create a copy of MatchCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BetCopyWith<$Res>? get bet {
    if (_self.bet == null) {
    return null;
  }

  return $BetCopyWith<$Res>(_self.bet!, (value) {
    return _then(_self.copyWith(bet: value));
  });
}
}

// dart format on
