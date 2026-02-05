// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BetDto {

 int get id;@JsonKey(name: 'match_id') int get matchId;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'home_goals_prediction') int get homeGoalsPrediction;@JsonKey(name: 'away_goals_prediction') int get awayGoalsPrediction;@JsonKey(name: 'penalties_winner_id') int? get penaltiesWinnerId;
/// Create a copy of BetDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BetDtoCopyWith<BetDto> get copyWith => _$BetDtoCopyWithImpl<BetDto>(this as BetDto, _$identity);

  /// Serializes this BetDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BetDto&&(identical(other.id, id) || other.id == id)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.homeGoalsPrediction, homeGoalsPrediction) || other.homeGoalsPrediction == homeGoalsPrediction)&&(identical(other.awayGoalsPrediction, awayGoalsPrediction) || other.awayGoalsPrediction == awayGoalsPrediction)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,matchId,userId,homeGoalsPrediction,awayGoalsPrediction,penaltiesWinnerId);

@override
String toString() {
  return 'BetDto(id: $id, matchId: $matchId, userId: $userId, homeGoalsPrediction: $homeGoalsPrediction, awayGoalsPrediction: $awayGoalsPrediction, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class $BetDtoCopyWith<$Res>  {
  factory $BetDtoCopyWith(BetDto value, $Res Function(BetDto) _then) = _$BetDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'match_id') int matchId,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'home_goals_prediction') int homeGoalsPrediction,@JsonKey(name: 'away_goals_prediction') int awayGoalsPrediction,@JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId
});




}
/// @nodoc
class _$BetDtoCopyWithImpl<$Res>
    implements $BetDtoCopyWith<$Res> {
  _$BetDtoCopyWithImpl(this._self, this._then);

  final BetDto _self;
  final $Res Function(BetDto) _then;

/// Create a copy of BetDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? matchId = null,Object? userId = null,Object? homeGoalsPrediction = null,Object? awayGoalsPrediction = null,Object? penaltiesWinnerId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,homeGoalsPrediction: null == homeGoalsPrediction ? _self.homeGoalsPrediction : homeGoalsPrediction // ignore: cast_nullable_to_non_nullable
as int,awayGoalsPrediction: null == awayGoalsPrediction ? _self.awayGoalsPrediction : awayGoalsPrediction // ignore: cast_nullable_to_non_nullable
as int,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BetDto].
extension BetDtoPatterns on BetDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BetDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BetDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BetDto value)  $default,){
final _that = this;
switch (_that) {
case _BetDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BetDto value)?  $default,){
final _that = this;
switch (_that) {
case _BetDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'match_id')  int matchId, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'home_goals_prediction')  int homeGoalsPrediction, @JsonKey(name: 'away_goals_prediction')  int awayGoalsPrediction, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BetDto() when $default != null:
return $default(_that.id,_that.matchId,_that.userId,_that.homeGoalsPrediction,_that.awayGoalsPrediction,_that.penaltiesWinnerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'match_id')  int matchId, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'home_goals_prediction')  int homeGoalsPrediction, @JsonKey(name: 'away_goals_prediction')  int awayGoalsPrediction, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)  $default,) {final _that = this;
switch (_that) {
case _BetDto():
return $default(_that.id,_that.matchId,_that.userId,_that.homeGoalsPrediction,_that.awayGoalsPrediction,_that.penaltiesWinnerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'match_id')  int matchId, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'home_goals_prediction')  int homeGoalsPrediction, @JsonKey(name: 'away_goals_prediction')  int awayGoalsPrediction, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)?  $default,) {final _that = this;
switch (_that) {
case _BetDto() when $default != null:
return $default(_that.id,_that.matchId,_that.userId,_that.homeGoalsPrediction,_that.awayGoalsPrediction,_that.penaltiesWinnerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BetDto extends BetDto {
  const _BetDto({required this.id, @JsonKey(name: 'match_id') required this.matchId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'home_goals_prediction') required this.homeGoalsPrediction, @JsonKey(name: 'away_goals_prediction') required this.awayGoalsPrediction, @JsonKey(name: 'penalties_winner_id') this.penaltiesWinnerId}): super._();
  factory _BetDto.fromJson(Map<String, dynamic> json) => _$BetDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'match_id') final  int matchId;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'home_goals_prediction') final  int homeGoalsPrediction;
@override@JsonKey(name: 'away_goals_prediction') final  int awayGoalsPrediction;
@override@JsonKey(name: 'penalties_winner_id') final  int? penaltiesWinnerId;

/// Create a copy of BetDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BetDtoCopyWith<_BetDto> get copyWith => __$BetDtoCopyWithImpl<_BetDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BetDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BetDto&&(identical(other.id, id) || other.id == id)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.homeGoalsPrediction, homeGoalsPrediction) || other.homeGoalsPrediction == homeGoalsPrediction)&&(identical(other.awayGoalsPrediction, awayGoalsPrediction) || other.awayGoalsPrediction == awayGoalsPrediction)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,matchId,userId,homeGoalsPrediction,awayGoalsPrediction,penaltiesWinnerId);

@override
String toString() {
  return 'BetDto(id: $id, matchId: $matchId, userId: $userId, homeGoalsPrediction: $homeGoalsPrediction, awayGoalsPrediction: $awayGoalsPrediction, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class _$BetDtoCopyWith<$Res> implements $BetDtoCopyWith<$Res> {
  factory _$BetDtoCopyWith(_BetDto value, $Res Function(_BetDto) _then) = __$BetDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'match_id') int matchId,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'home_goals_prediction') int homeGoalsPrediction,@JsonKey(name: 'away_goals_prediction') int awayGoalsPrediction,@JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId
});




}
/// @nodoc
class __$BetDtoCopyWithImpl<$Res>
    implements _$BetDtoCopyWith<$Res> {
  __$BetDtoCopyWithImpl(this._self, this._then);

  final _BetDto _self;
  final $Res Function(_BetDto) _then;

/// Create a copy of BetDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? matchId = null,Object? userId = null,Object? homeGoalsPrediction = null,Object? awayGoalsPrediction = null,Object? penaltiesWinnerId = freezed,}) {
  return _then(_BetDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,homeGoalsPrediction: null == homeGoalsPrediction ? _self.homeGoalsPrediction : homeGoalsPrediction // ignore: cast_nullable_to_non_nullable
as int,awayGoalsPrediction: null == awayGoalsPrediction ? _self.awayGoalsPrediction : awayGoalsPrediction // ignore: cast_nullable_to_non_nullable
as int,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
