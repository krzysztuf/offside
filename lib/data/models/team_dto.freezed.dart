// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamDto {

 int get id; String get name; String get abbreviation;
/// Create a copy of TeamDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamDtoCopyWith<TeamDto> get copyWith => _$TeamDtoCopyWithImpl<TeamDto>(this as TeamDto, _$identity);

  /// Serializes this TeamDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,abbreviation);

@override
String toString() {
  return 'TeamDto(id: $id, name: $name, abbreviation: $abbreviation)';
}


}

/// @nodoc
abstract mixin class $TeamDtoCopyWith<$Res>  {
  factory $TeamDtoCopyWith(TeamDto value, $Res Function(TeamDto) _then) = _$TeamDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String abbreviation
});




}
/// @nodoc
class _$TeamDtoCopyWithImpl<$Res>
    implements $TeamDtoCopyWith<$Res> {
  _$TeamDtoCopyWithImpl(this._self, this._then);

  final TeamDto _self;
  final $Res Function(TeamDto) _then;

/// Create a copy of TeamDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? abbreviation = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamDto].
extension TeamDtoPatterns on TeamDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamDto value)  $default,){
final _that = this;
switch (_that) {
case _TeamDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamDto value)?  $default,){
final _that = this;
switch (_that) {
case _TeamDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String abbreviation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamDto() when $default != null:
return $default(_that.id,_that.name,_that.abbreviation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String abbreviation)  $default,) {final _that = this;
switch (_that) {
case _TeamDto():
return $default(_that.id,_that.name,_that.abbreviation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String abbreviation)?  $default,) {final _that = this;
switch (_that) {
case _TeamDto() when $default != null:
return $default(_that.id,_that.name,_that.abbreviation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamDto extends TeamDto {
  const _TeamDto({required this.id, required this.name, required this.abbreviation}): super._();
  factory _TeamDto.fromJson(Map<String, dynamic> json) => _$TeamDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String abbreviation;

/// Create a copy of TeamDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamDtoCopyWith<_TeamDto> get copyWith => __$TeamDtoCopyWithImpl<_TeamDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,abbreviation);

@override
String toString() {
  return 'TeamDto(id: $id, name: $name, abbreviation: $abbreviation)';
}


}

/// @nodoc
abstract mixin class _$TeamDtoCopyWith<$Res> implements $TeamDtoCopyWith<$Res> {
  factory _$TeamDtoCopyWith(_TeamDto value, $Res Function(_TeamDto) _then) = __$TeamDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String abbreviation
});




}
/// @nodoc
class __$TeamDtoCopyWithImpl<$Res>
    implements _$TeamDtoCopyWith<$Res> {
  __$TeamDtoCopyWithImpl(this._self, this._then);

  final _TeamDto _self;
  final $Res Function(_TeamDto) _then;

/// Create a copy of TeamDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? abbreviation = null,}) {
  return _then(_TeamDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
