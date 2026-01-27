// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Match {

 String get id;@JsonKey(includeFromJson: false) Fetchable<Team> get homeTeam;@JsonKey(includeFromJson: false) Fetchable<Team> get awayTeam; DateTime get kickOffDate; String get stage; bool get knockoutStage; MatchOutcome? get outcome;@JsonKey(includeFromJson: false) Fetchable<List<Bet>> get bets;
/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchCopyWith<Match> get copyWith => _$MatchCopyWithImpl<Match>(this as Match, _$identity);

  /// Serializes this Match to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Match&&(identical(other.id, id) || other.id == id)&&(identical(other.homeTeam, homeTeam) || other.homeTeam == homeTeam)&&(identical(other.awayTeam, awayTeam) || other.awayTeam == awayTeam)&&(identical(other.kickOffDate, kickOffDate) || other.kickOffDate == kickOffDate)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.knockoutStage, knockoutStage) || other.knockoutStage == knockoutStage)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.bets, bets) || other.bets == bets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeTeam,awayTeam,kickOffDate,stage,knockoutStage,outcome,bets);

@override
String toString() {
  return 'Match(id: $id, homeTeam: $homeTeam, awayTeam: $awayTeam, kickOffDate: $kickOffDate, stage: $stage, knockoutStage: $knockoutStage, outcome: $outcome, bets: $bets)';
}


}

/// @nodoc
abstract mixin class $MatchCopyWith<$Res>  {
  factory $MatchCopyWith(Match value, $Res Function(Match) _then) = _$MatchCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(includeFromJson: false) Fetchable<Team> homeTeam,@JsonKey(includeFromJson: false) Fetchable<Team> awayTeam, DateTime kickOffDate, String stage, bool knockoutStage, MatchOutcome? outcome,@JsonKey(includeFromJson: false) Fetchable<List<Bet>> bets
});


$MatchOutcomeCopyWith<$Res>? get outcome;

}
/// @nodoc
class _$MatchCopyWithImpl<$Res>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._self, this._then);

  final Match _self;
  final $Res Function(Match) _then;

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeTeam = null,Object? awayTeam = null,Object? kickOffDate = null,Object? stage = null,Object? knockoutStage = null,Object? outcome = freezed,Object? bets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeTeam: null == homeTeam ? _self.homeTeam : homeTeam // ignore: cast_nullable_to_non_nullable
as Fetchable<Team>,awayTeam: null == awayTeam ? _self.awayTeam : awayTeam // ignore: cast_nullable_to_non_nullable
as Fetchable<Team>,kickOffDate: null == kickOffDate ? _self.kickOffDate : kickOffDate // ignore: cast_nullable_to_non_nullable
as DateTime,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,knockoutStage: null == knockoutStage ? _self.knockoutStage : knockoutStage // ignore: cast_nullable_to_non_nullable
as bool,outcome: freezed == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as MatchOutcome?,bets: null == bets ? _self.bets : bets // ignore: cast_nullable_to_non_nullable
as Fetchable<List<Bet>>,
  ));
}
/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchOutcomeCopyWith<$Res>? get outcome {
    if (_self.outcome == null) {
    return null;
  }

  return $MatchOutcomeCopyWith<$Res>(_self.outcome!, (value) {
    return _then(_self.copyWith(outcome: value));
  });
}
}


/// Adds pattern-matching-related methods to [Match].
extension MatchPatterns on Match {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Match value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Match() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Match value)  $default,){
final _that = this;
switch (_that) {
case _Match():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Match value)?  $default,){
final _that = this;
switch (_that) {
case _Match() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(includeFromJson: false)  Fetchable<Team> homeTeam, @JsonKey(includeFromJson: false)  Fetchable<Team> awayTeam,  DateTime kickOffDate,  String stage,  bool knockoutStage,  MatchOutcome? outcome, @JsonKey(includeFromJson: false)  Fetchable<List<Bet>> bets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Match() when $default != null:
return $default(_that.id,_that.homeTeam,_that.awayTeam,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.outcome,_that.bets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(includeFromJson: false)  Fetchable<Team> homeTeam, @JsonKey(includeFromJson: false)  Fetchable<Team> awayTeam,  DateTime kickOffDate,  String stage,  bool knockoutStage,  MatchOutcome? outcome, @JsonKey(includeFromJson: false)  Fetchable<List<Bet>> bets)  $default,) {final _that = this;
switch (_that) {
case _Match():
return $default(_that.id,_that.homeTeam,_that.awayTeam,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.outcome,_that.bets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(includeFromJson: false)  Fetchable<Team> homeTeam, @JsonKey(includeFromJson: false)  Fetchable<Team> awayTeam,  DateTime kickOffDate,  String stage,  bool knockoutStage,  MatchOutcome? outcome, @JsonKey(includeFromJson: false)  Fetchable<List<Bet>> bets)?  $default,) {final _that = this;
switch (_that) {
case _Match() when $default != null:
return $default(_that.id,_that.homeTeam,_that.awayTeam,_that.kickOffDate,_that.stage,_that.knockoutStage,_that.outcome,_that.bets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Match extends Match {
  const _Match({this.id = '', @JsonKey(includeFromJson: false) this.homeTeam = const NoOpFetchable(), @JsonKey(includeFromJson: false) this.awayTeam = const NoOpFetchable(), required this.kickOffDate, required this.stage, required this.knockoutStage, this.outcome, @JsonKey(includeFromJson: false) this.bets = const NoOpFetchable()}): super._();
  factory _Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(includeFromJson: false) final  Fetchable<Team> homeTeam;
@override@JsonKey(includeFromJson: false) final  Fetchable<Team> awayTeam;
@override final  DateTime kickOffDate;
@override final  String stage;
@override final  bool knockoutStage;
@override final  MatchOutcome? outcome;
@override@JsonKey(includeFromJson: false) final  Fetchable<List<Bet>> bets;

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchCopyWith<_Match> get copyWith => __$MatchCopyWithImpl<_Match>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Match&&(identical(other.id, id) || other.id == id)&&(identical(other.homeTeam, homeTeam) || other.homeTeam == homeTeam)&&(identical(other.awayTeam, awayTeam) || other.awayTeam == awayTeam)&&(identical(other.kickOffDate, kickOffDate) || other.kickOffDate == kickOffDate)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.knockoutStage, knockoutStage) || other.knockoutStage == knockoutStage)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.bets, bets) || other.bets == bets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeTeam,awayTeam,kickOffDate,stage,knockoutStage,outcome,bets);

@override
String toString() {
  return 'Match(id: $id, homeTeam: $homeTeam, awayTeam: $awayTeam, kickOffDate: $kickOffDate, stage: $stage, knockoutStage: $knockoutStage, outcome: $outcome, bets: $bets)';
}


}

/// @nodoc
abstract mixin class _$MatchCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$MatchCopyWith(_Match value, $Res Function(_Match) _then) = __$MatchCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(includeFromJson: false) Fetchable<Team> homeTeam,@JsonKey(includeFromJson: false) Fetchable<Team> awayTeam, DateTime kickOffDate, String stage, bool knockoutStage, MatchOutcome? outcome,@JsonKey(includeFromJson: false) Fetchable<List<Bet>> bets
});


@override $MatchOutcomeCopyWith<$Res>? get outcome;

}
/// @nodoc
class __$MatchCopyWithImpl<$Res>
    implements _$MatchCopyWith<$Res> {
  __$MatchCopyWithImpl(this._self, this._then);

  final _Match _self;
  final $Res Function(_Match) _then;

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeTeam = null,Object? awayTeam = null,Object? kickOffDate = null,Object? stage = null,Object? knockoutStage = null,Object? outcome = freezed,Object? bets = null,}) {
  return _then(_Match(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeTeam: null == homeTeam ? _self.homeTeam : homeTeam // ignore: cast_nullable_to_non_nullable
as Fetchable<Team>,awayTeam: null == awayTeam ? _self.awayTeam : awayTeam // ignore: cast_nullable_to_non_nullable
as Fetchable<Team>,kickOffDate: null == kickOffDate ? _self.kickOffDate : kickOffDate // ignore: cast_nullable_to_non_nullable
as DateTime,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String,knockoutStage: null == knockoutStage ? _self.knockoutStage : knockoutStage // ignore: cast_nullable_to_non_nullable
as bool,outcome: freezed == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as MatchOutcome?,bets: null == bets ? _self.bets : bets // ignore: cast_nullable_to_non_nullable
as Fetchable<List<Bet>>,
  ));
}

/// Create a copy of Match
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchOutcomeCopyWith<$Res>? get outcome {
    if (_self.outcome == null) {
    return null;
  }

  return $MatchOutcomeCopyWith<$Res>(_self.outcome!, (value) {
    return _then(_self.copyWith(outcome: value));
  });
}
}

// dart format on
