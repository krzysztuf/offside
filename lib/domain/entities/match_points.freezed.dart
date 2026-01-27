// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchPoints {

 int get field;
/// Create a copy of MatchPoints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchPointsCopyWith<MatchPoints> get copyWith => _$MatchPointsCopyWithImpl<MatchPoints>(this as MatchPoints, _$identity);

  /// Serializes this MatchPoints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchPoints&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field);

@override
String toString() {
  return 'MatchPoints(field: $field)';
}


}

/// @nodoc
abstract mixin class $MatchPointsCopyWith<$Res>  {
  factory $MatchPointsCopyWith(MatchPoints value, $Res Function(MatchPoints) _then) = _$MatchPointsCopyWithImpl;
@useResult
$Res call({
 int field
});




}
/// @nodoc
class _$MatchPointsCopyWithImpl<$Res>
    implements $MatchPointsCopyWith<$Res> {
  _$MatchPointsCopyWithImpl(this._self, this._then);

  final MatchPoints _self;
  final $Res Function(MatchPoints) _then;

/// Create a copy of MatchPoints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchPoints].
extension MatchPointsPatterns on MatchPoints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchPoints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchPoints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchPoints value)  $default,){
final _that = this;
switch (_that) {
case _MatchPoints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchPoints value)?  $default,){
final _that = this;
switch (_that) {
case _MatchPoints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int field)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchPoints() when $default != null:
return $default(_that.field);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int field)  $default,) {final _that = this;
switch (_that) {
case _MatchPoints():
return $default(_that.field);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int field)?  $default,) {final _that = this;
switch (_that) {
case _MatchPoints() when $default != null:
return $default(_that.field);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchPoints extends MatchPoints {
  const _MatchPoints({required this.field}): super._();
  factory _MatchPoints.fromJson(Map<String, dynamic> json) => _$MatchPointsFromJson(json);

@override final  int field;

/// Create a copy of MatchPoints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchPointsCopyWith<_MatchPoints> get copyWith => __$MatchPointsCopyWithImpl<_MatchPoints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchPointsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchPoints&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field);

@override
String toString() {
  return 'MatchPoints(field: $field)';
}


}

/// @nodoc
abstract mixin class _$MatchPointsCopyWith<$Res> implements $MatchPointsCopyWith<$Res> {
  factory _$MatchPointsCopyWith(_MatchPoints value, $Res Function(_MatchPoints) _then) = __$MatchPointsCopyWithImpl;
@override @useResult
$Res call({
 int field
});




}
/// @nodoc
class __$MatchPointsCopyWithImpl<$Res>
    implements _$MatchPointsCopyWith<$Res> {
  __$MatchPointsCopyWithImpl(this._self, this._then);

  final _MatchPoints _self;
  final $Res Function(_MatchPoints) _then;

/// Create a copy of MatchPoints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,}) {
  return _then(_MatchPoints(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
