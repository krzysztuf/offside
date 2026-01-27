// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition_winner_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompetitionWinnerPickerState {

 Team? get winnerPrediction; List<Team> get teams; bool get loading; bool get saving;
/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompetitionWinnerPickerStateCopyWith<CompetitionWinnerPickerState> get copyWith => _$CompetitionWinnerPickerStateCopyWithImpl<CompetitionWinnerPickerState>(this as CompetitionWinnerPickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompetitionWinnerPickerState&&(identical(other.winnerPrediction, winnerPrediction) || other.winnerPrediction == winnerPrediction)&&const DeepCollectionEquality().equals(other.teams, teams)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.saving, saving) || other.saving == saving));
}


@override
int get hashCode => Object.hash(runtimeType,winnerPrediction,const DeepCollectionEquality().hash(teams),loading,saving);

@override
String toString() {
  return 'CompetitionWinnerPickerState(winnerPrediction: $winnerPrediction, teams: $teams, loading: $loading, saving: $saving)';
}


}

/// @nodoc
abstract mixin class $CompetitionWinnerPickerStateCopyWith<$Res>  {
  factory $CompetitionWinnerPickerStateCopyWith(CompetitionWinnerPickerState value, $Res Function(CompetitionWinnerPickerState) _then) = _$CompetitionWinnerPickerStateCopyWithImpl;
@useResult
$Res call({
 Team? winnerPrediction, List<Team> teams, bool loading, bool saving
});


$TeamCopyWith<$Res>? get winnerPrediction;

}
/// @nodoc
class _$CompetitionWinnerPickerStateCopyWithImpl<$Res>
    implements $CompetitionWinnerPickerStateCopyWith<$Res> {
  _$CompetitionWinnerPickerStateCopyWithImpl(this._self, this._then);

  final CompetitionWinnerPickerState _self;
  final $Res Function(CompetitionWinnerPickerState) _then;

/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? winnerPrediction = freezed,Object? teams = null,Object? loading = null,Object? saving = null,}) {
  return _then(_self.copyWith(
winnerPrediction: freezed == winnerPrediction ? _self.winnerPrediction : winnerPrediction // ignore: cast_nullable_to_non_nullable
as Team?,teams: null == teams ? _self.teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,saving: null == saving ? _self.saving : saving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res>? get winnerPrediction {
    if (_self.winnerPrediction == null) {
    return null;
  }

  return $TeamCopyWith<$Res>(_self.winnerPrediction!, (value) {
    return _then(_self.copyWith(winnerPrediction: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompetitionWinnerPickerState].
extension CompetitionWinnerPickerStatePatterns on CompetitionWinnerPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompetitionWinnerPickerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompetitionWinnerPickerState value)  $default,){
final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompetitionWinnerPickerState value)?  $default,){
final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Team? winnerPrediction,  List<Team> teams,  bool loading,  bool saving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState() when $default != null:
return $default(_that.winnerPrediction,_that.teams,_that.loading,_that.saving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Team? winnerPrediction,  List<Team> teams,  bool loading,  bool saving)  $default,) {final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState():
return $default(_that.winnerPrediction,_that.teams,_that.loading,_that.saving);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Team? winnerPrediction,  List<Team> teams,  bool loading,  bool saving)?  $default,) {final _that = this;
switch (_that) {
case _CompetitionWinnerPickerState() when $default != null:
return $default(_that.winnerPrediction,_that.teams,_that.loading,_that.saving);case _:
  return null;

}
}

}

/// @nodoc


class _CompetitionWinnerPickerState extends CompetitionWinnerPickerState {
  const _CompetitionWinnerPickerState({this.winnerPrediction, final  List<Team> teams = const [], this.loading = true, this.saving = false}): _teams = teams,super._();
  

@override final  Team? winnerPrediction;
 final  List<Team> _teams;
@override@JsonKey() List<Team> get teams {
  if (_teams is EqualUnmodifiableListView) return _teams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teams);
}

@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool saving;

/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompetitionWinnerPickerStateCopyWith<_CompetitionWinnerPickerState> get copyWith => __$CompetitionWinnerPickerStateCopyWithImpl<_CompetitionWinnerPickerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompetitionWinnerPickerState&&(identical(other.winnerPrediction, winnerPrediction) || other.winnerPrediction == winnerPrediction)&&const DeepCollectionEquality().equals(other._teams, _teams)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.saving, saving) || other.saving == saving));
}


@override
int get hashCode => Object.hash(runtimeType,winnerPrediction,const DeepCollectionEquality().hash(_teams),loading,saving);

@override
String toString() {
  return 'CompetitionWinnerPickerState(winnerPrediction: $winnerPrediction, teams: $teams, loading: $loading, saving: $saving)';
}


}

/// @nodoc
abstract mixin class _$CompetitionWinnerPickerStateCopyWith<$Res> implements $CompetitionWinnerPickerStateCopyWith<$Res> {
  factory _$CompetitionWinnerPickerStateCopyWith(_CompetitionWinnerPickerState value, $Res Function(_CompetitionWinnerPickerState) _then) = __$CompetitionWinnerPickerStateCopyWithImpl;
@override @useResult
$Res call({
 Team? winnerPrediction, List<Team> teams, bool loading, bool saving
});


@override $TeamCopyWith<$Res>? get winnerPrediction;

}
/// @nodoc
class __$CompetitionWinnerPickerStateCopyWithImpl<$Res>
    implements _$CompetitionWinnerPickerStateCopyWith<$Res> {
  __$CompetitionWinnerPickerStateCopyWithImpl(this._self, this._then);

  final _CompetitionWinnerPickerState _self;
  final $Res Function(_CompetitionWinnerPickerState) _then;

/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? winnerPrediction = freezed,Object? teams = null,Object? loading = null,Object? saving = null,}) {
  return _then(_CompetitionWinnerPickerState(
winnerPrediction: freezed == winnerPrediction ? _self.winnerPrediction : winnerPrediction // ignore: cast_nullable_to_non_nullable
as Team?,teams: null == teams ? _self._teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,saving: null == saving ? _self.saving : saving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CompetitionWinnerPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res>? get winnerPrediction {
    if (_self.winnerPrediction == null) {
    return null;
  }

  return $TeamCopyWith<$Res>(_self.winnerPrediction!, (value) {
    return _then(_self.copyWith(winnerPrediction: value));
  });
}
}

// dart format on
