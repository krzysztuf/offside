// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_match_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewMatchDialogState {

 List<Team> get teams; bool get loading;
/// Create a copy of NewMatchDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewMatchDialogStateCopyWith<NewMatchDialogState> get copyWith => _$NewMatchDialogStateCopyWithImpl<NewMatchDialogState>(this as NewMatchDialogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewMatchDialogState&&const DeepCollectionEquality().equals(other.teams, teams)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(teams),loading);

@override
String toString() {
  return 'NewMatchDialogState(teams: $teams, loading: $loading)';
}


}

/// @nodoc
abstract mixin class $NewMatchDialogStateCopyWith<$Res>  {
  factory $NewMatchDialogStateCopyWith(NewMatchDialogState value, $Res Function(NewMatchDialogState) _then) = _$NewMatchDialogStateCopyWithImpl;
@useResult
$Res call({
 List<Team> teams, bool loading
});




}
/// @nodoc
class _$NewMatchDialogStateCopyWithImpl<$Res>
    implements $NewMatchDialogStateCopyWith<$Res> {
  _$NewMatchDialogStateCopyWithImpl(this._self, this._then);

  final NewMatchDialogState _self;
  final $Res Function(NewMatchDialogState) _then;

/// Create a copy of NewMatchDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? teams = null,Object? loading = null,}) {
  return _then(_self.copyWith(
teams: null == teams ? _self.teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NewMatchDialogState].
extension NewMatchDialogStatePatterns on NewMatchDialogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewMatchDialogState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewMatchDialogState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewMatchDialogState value)  $default,){
final _that = this;
switch (_that) {
case _NewMatchDialogState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewMatchDialogState value)?  $default,){
final _that = this;
switch (_that) {
case _NewMatchDialogState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Team> teams,  bool loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewMatchDialogState() when $default != null:
return $default(_that.teams,_that.loading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Team> teams,  bool loading)  $default,) {final _that = this;
switch (_that) {
case _NewMatchDialogState():
return $default(_that.teams,_that.loading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Team> teams,  bool loading)?  $default,) {final _that = this;
switch (_that) {
case _NewMatchDialogState() when $default != null:
return $default(_that.teams,_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _NewMatchDialogState extends NewMatchDialogState {
  const _NewMatchDialogState({required final  List<Team> teams, required this.loading}): _teams = teams,super._();
  

 final  List<Team> _teams;
@override List<Team> get teams {
  if (_teams is EqualUnmodifiableListView) return _teams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teams);
}

@override final  bool loading;

/// Create a copy of NewMatchDialogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewMatchDialogStateCopyWith<_NewMatchDialogState> get copyWith => __$NewMatchDialogStateCopyWithImpl<_NewMatchDialogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewMatchDialogState&&const DeepCollectionEquality().equals(other._teams, _teams)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_teams),loading);

@override
String toString() {
  return 'NewMatchDialogState(teams: $teams, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$NewMatchDialogStateCopyWith<$Res> implements $NewMatchDialogStateCopyWith<$Res> {
  factory _$NewMatchDialogStateCopyWith(_NewMatchDialogState value, $Res Function(_NewMatchDialogState) _then) = __$NewMatchDialogStateCopyWithImpl;
@override @useResult
$Res call({
 List<Team> teams, bool loading
});




}
/// @nodoc
class __$NewMatchDialogStateCopyWithImpl<$Res>
    implements _$NewMatchDialogStateCopyWith<$Res> {
  __$NewMatchDialogStateCopyWithImpl(this._self, this._then);

  final _NewMatchDialogState _self;
  final $Res Function(_NewMatchDialogState) _then;

/// Create a copy of NewMatchDialogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? teams = null,Object? loading = null,}) {
  return _then(_NewMatchDialogState(
teams: null == teams ? _self._teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
