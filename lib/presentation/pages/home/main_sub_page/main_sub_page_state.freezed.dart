// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_sub_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainSubPageState {

 List<UserScoreSummary> get userScores;
/// Create a copy of MainSubPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainSubPageStateCopyWith<MainSubPageState> get copyWith => _$MainSubPageStateCopyWithImpl<MainSubPageState>(this as MainSubPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainSubPageState&&const DeepCollectionEquality().equals(other.userScores, userScores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(userScores));

@override
String toString() {
  return 'MainSubPageState(userScores: $userScores)';
}


}

/// @nodoc
abstract mixin class $MainSubPageStateCopyWith<$Res>  {
  factory $MainSubPageStateCopyWith(MainSubPageState value, $Res Function(MainSubPageState) _then) = _$MainSubPageStateCopyWithImpl;
@useResult
$Res call({
 List<UserScoreSummary> userScores
});




}
/// @nodoc
class _$MainSubPageStateCopyWithImpl<$Res>
    implements $MainSubPageStateCopyWith<$Res> {
  _$MainSubPageStateCopyWithImpl(this._self, this._then);

  final MainSubPageState _self;
  final $Res Function(MainSubPageState) _then;

/// Create a copy of MainSubPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userScores = null,}) {
  return _then(_self.copyWith(
userScores: null == userScores ? _self.userScores : userScores // ignore: cast_nullable_to_non_nullable
as List<UserScoreSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [MainSubPageState].
extension MainSubPageStatePatterns on MainSubPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainSubPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainSubPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainSubPageState value)  $default,){
final _that = this;
switch (_that) {
case _MainSubPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainSubPageState value)?  $default,){
final _that = this;
switch (_that) {
case _MainSubPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserScoreSummary> userScores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainSubPageState() when $default != null:
return $default(_that.userScores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserScoreSummary> userScores)  $default,) {final _that = this;
switch (_that) {
case _MainSubPageState():
return $default(_that.userScores);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserScoreSummary> userScores)?  $default,) {final _that = this;
switch (_that) {
case _MainSubPageState() when $default != null:
return $default(_that.userScores);case _:
  return null;

}
}

}

/// @nodoc


class _MainSubPageState extends MainSubPageState {
  const _MainSubPageState({required final  List<UserScoreSummary> userScores}): _userScores = userScores,super._();
  

 final  List<UserScoreSummary> _userScores;
@override List<UserScoreSummary> get userScores {
  if (_userScores is EqualUnmodifiableListView) return _userScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userScores);
}


/// Create a copy of MainSubPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainSubPageStateCopyWith<_MainSubPageState> get copyWith => __$MainSubPageStateCopyWithImpl<_MainSubPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainSubPageState&&const DeepCollectionEquality().equals(other._userScores, _userScores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userScores));

@override
String toString() {
  return 'MainSubPageState(userScores: $userScores)';
}


}

/// @nodoc
abstract mixin class _$MainSubPageStateCopyWith<$Res> implements $MainSubPageStateCopyWith<$Res> {
  factory _$MainSubPageStateCopyWith(_MainSubPageState value, $Res Function(_MainSubPageState) _then) = __$MainSubPageStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserScoreSummary> userScores
});




}
/// @nodoc
class __$MainSubPageStateCopyWithImpl<$Res>
    implements _$MainSubPageStateCopyWith<$Res> {
  __$MainSubPageStateCopyWithImpl(this._self, this._then);

  final _MainSubPageState _self;
  final $Res Function(_MainSubPageState) _then;

/// Create a copy of MainSubPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userScores = null,}) {
  return _then(_MainSubPageState(
userScores: null == userScores ? _self._userScores : userScores // ignore: cast_nullable_to_non_nullable
as List<UserScoreSummary>,
  ));
}


}

// dart format on
