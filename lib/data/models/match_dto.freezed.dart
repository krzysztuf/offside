// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchDto {

 int get id;@JsonKey(name: 'home_team_id') int get homeTeamId;@JsonKey(name: 'away_team_id') int get awayTeamId;@JsonKey(name: 'kick_off_date') int get kickOffDate; String get stage;@JsonKey(name: 'knockout_stage') int get knockoutStage;@JsonKey(name: 'home_result') int? get homeResult;@JsonKey(name: 'away_result') int? get awayResult;@JsonKey(name: 'penalties_winner_id') int? get penaltiesWinnerId;
/// Create a copy of MatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchDtoCopyWith<MatchDto> get copyWith => _$MatchDtoCopyWithImpl<MatchDto>(this as MatchDto, _$identity);

  /// Serializes this MatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchDto&&(identical(other.id, id) || other.id == id)&&(identical(other.homeTeamId, homeTeamId) || other.homeTeamId == homeTeamId)&&(identical(other.awayTeamId, awayTeamId) || other.awayTeamId == awayTeamId)&&(identical(other.kickOffDate, kickOffDate) || other.kickOffDate == kickOffDate)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.knockoutStage, knockoutStage) || other.knockoutStage == knockoutStage)&&(identical(other.homeResult, homeResult) || other.homeResult == homeResult)&&(identical(other.awayResult, awayResult) || other.awayResult == awayResult)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeTeamId,awayTeamId,kickOffDate,stage,knockoutStage,homeResult,awayResult,penaltiesWinnerId);

@override
String toString() {
  return 'MatchDto(id: $id, homeTeamId: $homeTeamId, awayTeamId: $awayTeamId, kickOffDate: $kickOffDate, stage: $stage, knockoutStage: $knockoutStage, homeResult: $homeResult, awayResult: $awayResult, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class $MatchDtoCopyWith<$Res>  {
  factory $MatchDtoCopyWith(MatchDto value, $Res Function(MatchDto) _then) = _$MatchDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'home_team_id') int homeTeamId,@JsonKey(name: 'away_team_id') int awayTeamId,@JsonKey(name: 'kick_off_date') int kickOffDate, String stage,@JsonKey(name: 'knockout_stage') int knockoutStage,@JsonKey(name: 'home_result') int? homeResult,@JsonKey(name: 'away_result') int? awayResult,@JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId
});




}
/// @nodoc
class _$MatchDtoCopyWithImpl<$Res>
    implements $MatchDtoCopyWith<$Res> {
  _$MatchDtoCopyWithImpl(this._self, this._then);

  final MatchDto _self;
  final $Res Function(MatchDto) _then;

/// Create a copy of MatchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeTeamId = null,Object? awayTeamId = null,Object? kickOffDate = null,Object? stage = null,Object? knockoutStage = null,Object? homeResult = freezed,Object? awayResult = freezed,Object? penaltiesWinnerId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,homeTeamId: null == homeTeamId ? _self.homeTeamId : homeTeamId // ignore: cast_nullable_to_non_nullable
as int,awayTeamId: null == awayTeamId ? _self.awayTeamId : awayTeamId // ignore: cast_nullable_to_non_nullable
as int,kickOffDate: null == kickOffDate ? _self.kickOffDate : kickOffDate // ignore: cast_nullable_to_non_nullable
as int,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,knockoutStage: null == knockoutStage ? _self.knockoutStage : knockoutStage // ignore: cast_nullable_to_non_nullable
as int,homeResult: freezed == homeResult ? _self.homeResult : homeResult // ignore: cast_nullable_to_non_nullable
as int?,awayResult: freezed == awayResult ? _self.awayResult : awayResult // ignore: cast_nullable_to_non_nullable
as int?,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchDto].
extension MatchDtoPatterns on MatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchDto value)  $default,){
final _that = this;
switch (_that) {
case _MatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _MatchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'home_team_id')  int homeTeamId, @JsonKey(name: 'away_team_id')  int awayTeamId, @JsonKey(name: 'kick_off_date')  int kickOffDate,  String stage, @JsonKey(name: 'knockout_stage')  int knockoutStage, @JsonKey(name: 'home_result')  int? homeResult, @JsonKey(name: 'away_result')  int? awayResult, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchDto() when $default != null:
return $default(_that.id,_that.homeTeamId,_that.awayTeamId,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.homeResult,_that.awayResult,_that.penaltiesWinnerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'home_team_id')  int homeTeamId, @JsonKey(name: 'away_team_id')  int awayTeamId, @JsonKey(name: 'kick_off_date')  int kickOffDate,  String stage, @JsonKey(name: 'knockout_stage')  int knockoutStage, @JsonKey(name: 'home_result')  int? homeResult, @JsonKey(name: 'away_result')  int? awayResult, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)  $default,) {final _that = this;
switch (_that) {
case _MatchDto():
return $default(_that.id,_that.homeTeamId,_that.awayTeamId,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.homeResult,_that.awayResult,_that.penaltiesWinnerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'home_team_id')  int homeTeamId, @JsonKey(name: 'away_team_id')  int awayTeamId, @JsonKey(name: 'kick_off_date')  int kickOffDate,  String stage, @JsonKey(name: 'knockout_stage')  int knockoutStage, @JsonKey(name: 'home_result')  int? homeResult, @JsonKey(name: 'away_result')  int? awayResult, @JsonKey(name: 'penalties_winner_id')  int? penaltiesWinnerId)?  $default,) {final _that = this;
switch (_that) {
case _MatchDto() when $default != null:
return $default(_that.id,_that.homeTeamId,_that.awayTeamId,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.homeResult,_that.awayResult,_that.penaltiesWinnerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchDto extends MatchDto {
  const _MatchDto({required this.id, @JsonKey(name: 'home_team_id') required this.homeTeamId, @JsonKey(name: 'away_team_id') required this.awayTeamId, @JsonKey(name: 'kick_off_date') required this.kickOffDate, required this.stage, @JsonKey(name: 'knockout_stage') required this.knockoutStage, @JsonKey(name: 'home_result') this.homeResult, @JsonKey(name: 'away_result') this.awayResult, @JsonKey(name: 'penalties_winner_id') this.penaltiesWinnerId}): super._();
  factory _MatchDto.fromJson(Map<String, dynamic> json) => _$MatchDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'home_team_id') final  int homeTeamId;
@override@JsonKey(name: 'away_team_id') final  int awayTeamId;
@override@JsonKey(name: 'kick_off_date') final  int kickOffDate;
@override final  String stage;
@override@JsonKey(name: 'knockout_stage') final  int knockoutStage;
@override@JsonKey(name: 'home_result') final  int? homeResult;
@override@JsonKey(name: 'away_result') final  int? awayResult;
@override@JsonKey(name: 'penalties_winner_id') final  int? penaltiesWinnerId;

/// Create a copy of MatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchDtoCopyWith<_MatchDto> get copyWith => __$MatchDtoCopyWithImpl<_MatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchDto&&(identical(other.id, id) || other.id == id)&&(identical(other.homeTeamId, homeTeamId) || other.homeTeamId == homeTeamId)&&(identical(other.awayTeamId, awayTeamId) || other.awayTeamId == awayTeamId)&&(identical(other.kickOffDate, kickOffDate) || other.kickOffDate == kickOffDate)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.knockoutStage, knockoutStage) || other.knockoutStage == knockoutStage)&&(identical(other.homeResult, homeResult) || other.homeResult == homeResult)&&(identical(other.awayResult, awayResult) || other.awayResult == awayResult)&&(identical(other.penaltiesWinnerId, penaltiesWinnerId) || other.penaltiesWinnerId == penaltiesWinnerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeTeamId,awayTeamId,kickOffDate,stage,knockoutStage,homeResult,awayResult,penaltiesWinnerId);

@override
String toString() {
  return 'MatchDto(id: $id, homeTeamId: $homeTeamId, awayTeamId: $awayTeamId, kickOffDate: $kickOffDate, stage: $stage, knockoutStage: $knockoutStage, homeResult: $homeResult, awayResult: $awayResult, penaltiesWinnerId: $penaltiesWinnerId)';
}


}

/// @nodoc
abstract mixin class _$MatchDtoCopyWith<$Res> implements $MatchDtoCopyWith<$Res> {
  factory _$MatchDtoCopyWith(_MatchDto value, $Res Function(_MatchDto) _then) = __$MatchDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'home_team_id') int homeTeamId,@JsonKey(name: 'away_team_id') int awayTeamId,@JsonKey(name: 'kick_off_date') int kickOffDate, String stage,@JsonKey(name: 'knockout_stage') int knockoutStage,@JsonKey(name: 'home_result') int? homeResult,@JsonKey(name: 'away_result') int? awayResult,@JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId
});




}
/// @nodoc
class __$MatchDtoCopyWithImpl<$Res>
    implements _$MatchDtoCopyWith<$Res> {
  __$MatchDtoCopyWithImpl(this._self, this._then);

  final _MatchDto _self;
  final $Res Function(_MatchDto) _then;

/// Create a copy of MatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeTeamId = null,Object? awayTeamId = null,Object? kickOffDate = null,Object? stage = null,Object? knockoutStage = null,Object? homeResult = freezed,Object? awayResult = freezed,Object? penaltiesWinnerId = freezed,}) {
  return _then(_MatchDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,homeTeamId: null == homeTeamId ? _self.homeTeamId : homeTeamId // ignore: cast_nullable_to_non_nullable
as int,awayTeamId: null == awayTeamId ? _self.awayTeamId : awayTeamId // ignore: cast_nullable_to_non_nullable
as int,kickOffDate: null == kickOffDate ? _self.kickOffDate : kickOffDate // ignore: cast_nullable_to_non_nullable
as int,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,knockoutStage: null == knockoutStage ? _self.knockoutStage : knockoutStage // ignore: cast_nullable_to_non_nullable
as int,homeResult: freezed == homeResult ? _self.homeResult : homeResult // ignore: cast_nullable_to_non_nullable
as int?,awayResult: freezed == awayResult ? _self.awayResult : awayResult // ignore: cast_nullable_to_non_nullable
as int?,penaltiesWinnerId: freezed == penaltiesWinnerId ? _self.penaltiesWinnerId : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
