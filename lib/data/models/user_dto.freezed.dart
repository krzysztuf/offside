// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

 int get id; String get name; String get surname; String? get nickname; String? get image;@JsonKey(name: 'winner_prediction_id') int? get winnerPredictionId;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.image, image) || other.image == image)&&(identical(other.winnerPredictionId, winnerPredictionId) || other.winnerPredictionId == winnerPredictionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,surname,nickname,image,winnerPredictionId);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, surname: $surname, nickname: $nickname, image: $image, winnerPredictionId: $winnerPredictionId)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String surname, String? nickname, String? image,@JsonKey(name: 'winner_prediction_id') int? winnerPredictionId
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? surname = null,Object? nickname = freezed,Object? image = freezed,Object? winnerPredictionId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,winnerPredictionId: freezed == winnerPredictionId ? _self.winnerPredictionId : winnerPredictionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String surname,  String? nickname,  String? image, @JsonKey(name: 'winner_prediction_id')  int? winnerPredictionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.surname,_that.nickname,_that.image,_that.winnerPredictionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String surname,  String? nickname,  String? image, @JsonKey(name: 'winner_prediction_id')  int? winnerPredictionId)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.name,_that.surname,_that.nickname,_that.image,_that.winnerPredictionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String surname,  String? nickname,  String? image, @JsonKey(name: 'winner_prediction_id')  int? winnerPredictionId)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.surname,_that.nickname,_that.image,_that.winnerPredictionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto extends UserDto {
  const _UserDto({required this.id, required this.name, required this.surname, this.nickname, this.image, @JsonKey(name: 'winner_prediction_id') this.winnerPredictionId}): super._();
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String surname;
@override final  String? nickname;
@override final  String? image;
@override@JsonKey(name: 'winner_prediction_id') final  int? winnerPredictionId;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.image, image) || other.image == image)&&(identical(other.winnerPredictionId, winnerPredictionId) || other.winnerPredictionId == winnerPredictionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,surname,nickname,image,winnerPredictionId);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, surname: $surname, nickname: $nickname, image: $image, winnerPredictionId: $winnerPredictionId)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String surname, String? nickname, String? image,@JsonKey(name: 'winner_prediction_id') int? winnerPredictionId
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? surname = null,Object? nickname = freezed,Object? image = freezed,Object? winnerPredictionId = freezed,}) {
  return _then(_UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,winnerPredictionId: freezed == winnerPredictionId ? _self.winnerPredictionId : winnerPredictionId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
