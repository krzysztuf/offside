// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchOutcome {

 Goals get goals; String? get penaltiesWinnerId;
/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchOutcomeCopyWith<MatchOutcome> get copyWith => _$MatchOutcomeCopyWithImpl<MatchOutcome>(this as MatchOutcome, _$identity);

  /// Serializes this MatchOutcome to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchOutcome&&(identical(other.goals, goals) || other.goals == goals)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goals,penaltiesWinnerId);

@override
String toString() {
  return 'MatchOutcome(goals: $goals, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class $MatchOutcomeCopyWith<$Res>  {
  factory $MatchOutcomeCopyWith(MatchOutcome value, $Res Function(MatchOutcome) _then) = _$MatchOutcomeCopyWithImpl;
@useResult
$Res call({
 Goals goals, String? penaltiesWinnerId
});


$GoalsCopyWith<$Res> get goals;

}
/// @nodoc
class _$MatchOutcomeCopyWithImpl<$Res>
    implements $MatchOutcomeCopyWith<$Res> {
  _$MatchOutcomeCopyWithImpl(this._self, this._then);

  final MatchOutcome _self;
  final $Res Function(MatchOutcome) _then;

/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goals = null,Object? penaltiesWinnerId = freezed,}) {
  return _then(_self.copyWith(
goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as Goals,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoalsCopyWith<$Res> get goals {
  
  return $GoalsCopyWith<$Res>(_self.goals, (value) {
    return _then(_self.copyWith(goals: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchOutcome].
extension MatchOutcomePatterns on MatchOutcome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchOutcome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchOutcome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchOutcome value)  $default,){
final _that = this;
switch (_that) {
case _MatchOutcome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchOutcome value)?  $default,){
final _that = this;
switch (_that) {
case _MatchOutcome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Goals goals,  String? penaltiesWinnerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchOutcome() when $default != null:
return $default(_that.goals,_that.penaltiesWinnerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Goals goals,  String? penaltiesWinnerId)  $default,) {final _that = this;
switch (_that) {
case _MatchOutcome():
return $default(_that.goals,_that.penaltiesWinnerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Goals goals,  String? penaltiesWinnerId)?  $default,) {final _that = this;
switch (_that) {
case _MatchOutcome() when $default != null:
return $default(_that.goals,_that.penaltiesWinnerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchOutcome extends MatchOutcome {
  const _MatchOutcome({this.goals = const Goals(), this.penaltiesWinnerId = null}): super._();
  factory _MatchOutcome.fromJson(Map<String, dynamic> json) => _$MatchOutcomeFromJson(json);

@override@JsonKey() final  Goals goals;
@override@JsonKey() final  String? penaltiesWinnerId;

/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchOutcomeCopyWith<_MatchOutcome> get copyWith => __$MatchOutcomeCopyWithImpl<_MatchOutcome>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchOutcomeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchOutcome&&(identical(other.goals, goals) || other.goals == goals)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goals,penaltiesWinnerId);

@override
String toString() {
  return 'MatchOutcome(goals: $goals, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class _$MatchOutcomeCopyWith<$Res> implements $MatchOutcomeCopyWith<$Res> {
  factory _$MatchOutcomeCopyWith(_MatchOutcome value, $Res Function(_MatchOutcome) _then) = __$MatchOutcomeCopyWithImpl;
@override @useResult
$Res call({
 Goals goals, String? penaltiesWinnerId
});


@override $GoalsCopyWith<$Res> get goals;

}
/// @nodoc
class __$MatchOutcomeCopyWithImpl<$Res>
    implements _$MatchOutcomeCopyWith<$Res> {
  __$MatchOutcomeCopyWithImpl(this._self, this._then);

  final _MatchOutcome _self;
  final $Res Function(_MatchOutcome) _then;

/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goals = null,Object? penaltiesWinnerId = freezed,}) {
  return _then(_MatchOutcome(
goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as Goals,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MatchOutcome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoalsCopyWith<$Res> get goals {
  
  return $GoalsCopyWith<$Res>(_self.goals, (value) {
    return _then(_self.copyWith(goals: value));
  });
}
}

// dart format on
