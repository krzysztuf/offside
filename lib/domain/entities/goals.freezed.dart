// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Goals {

 int get home; int get away;
/// Create a copy of Goals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalsCopyWith<Goals> get copyWith => _$GoalsCopyWithImpl<Goals>(this as Goals, _$identity);

  /// Serializes this Goals to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Goals(home: $home, away: $away)';
}


}

/// @nodoc
abstract mixin class $GoalsCopyWith<$Res>  {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) _then) = _$GoalsCopyWithImpl;
@useResult
$Res call({
 int home, int away
});




}
/// @nodoc
class _$GoalsCopyWithImpl<$Res>
    implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._self, this._then);

  final Goals _self;
  final $Res Function(Goals) _then;

/// Create a copy of Goals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = null,Object? away = null,}) {
  return _then(_self.copyWith(
home: null == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as int,away: null == away ? _self.away : away // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Goals].
extension GoalsPatterns on Goals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Goals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Goals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Goals value)  $default,){
final _that = this;
switch (_that) {
case _Goals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Goals value)?  $default,){
final _that = this;
switch (_that) {
case _Goals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int home,  int away)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Goals() when $default != null:
return $default(_that.home,_that.away);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int home,  int away)  $default,) {final _that = this;
switch (_that) {
case _Goals():
return $default(_that.home,_that.away);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int home,  int away)?  $default,) {final _that = this;
switch (_that) {
case _Goals() when $default != null:
return $default(_that.home,_that.away);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Goals extends Goals {
  const _Goals({this.home = 0, this.away = 0}): super._();
  factory _Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

@override@JsonKey() final  int home;
@override@JsonKey() final  int away;

/// Create a copy of Goals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalsCopyWith<_Goals> get copyWith => __$GoalsCopyWithImpl<_Goals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalsToJson(this, );
}



@override
String toString() {
  return 'Goals(home: $home, away: $away)';
}


}

/// @nodoc
abstract mixin class _$GoalsCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$GoalsCopyWith(_Goals value, $Res Function(_Goals) _then) = __$GoalsCopyWithImpl;
@override @useResult
$Res call({
 int home, int away
});




}
/// @nodoc
class __$GoalsCopyWithImpl<$Res>
    implements _$GoalsCopyWith<$Res> {
  __$GoalsCopyWithImpl(this._self, this._then);

  final _Goals _self;
  final $Res Function(_Goals) _then;

/// Create a copy of Goals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = null,Object? away = null,}) {
  return _then(_Goals(
home: null == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as int,away: null == away ? _self.away : away // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
