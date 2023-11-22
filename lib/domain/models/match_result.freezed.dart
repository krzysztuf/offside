// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchResult _$MatchResultFromJson(Map<String, dynamic> json) {
  return _MatchResult.fromJson(json);
}

/// @nodoc
mixin _$MatchResult {
  int get id => throw _privateConstructorUsedError;
  Match get match => throw _privateConstructorUsedError;
  int get homeScore => throw _privateConstructorUsedError;
  int get awayScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchResultCopyWith<MatchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchResultCopyWith<$Res> {
  factory $MatchResultCopyWith(
          MatchResult value, $Res Function(MatchResult) then) =
      _$MatchResultCopyWithImpl<$Res, MatchResult>;
  @useResult
  $Res call({int id, Match match, int homeScore, int awayScore});

  $MatchCopyWith<$Res> get match;
}

/// @nodoc
class _$MatchResultCopyWithImpl<$Res, $Val extends MatchResult>
    implements $MatchResultCopyWith<$Res> {
  _$MatchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? match = null,
    Object? homeScore = null,
    Object? awayScore = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchCopyWith<$Res> get match {
    return $MatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchResultCopyWith<$Res>
    implements $MatchResultCopyWith<$Res> {
  factory _$$_MatchResultCopyWith(
          _$_MatchResult value, $Res Function(_$_MatchResult) then) =
      __$$_MatchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Match match, int homeScore, int awayScore});

  @override
  $MatchCopyWith<$Res> get match;
}

/// @nodoc
class __$$_MatchResultCopyWithImpl<$Res>
    extends _$MatchResultCopyWithImpl<$Res, _$_MatchResult>
    implements _$$_MatchResultCopyWith<$Res> {
  __$$_MatchResultCopyWithImpl(
      _$_MatchResult _value, $Res Function(_$_MatchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? match = null,
    Object? homeScore = null,
    Object? awayScore = null,
  }) {
    return _then(_$_MatchResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      homeScore: null == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int,
      awayScore: null == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchResult implements _MatchResult {
  const _$_MatchResult(
      {required this.id,
      required this.match,
      required this.homeScore,
      required this.awayScore});

  factory _$_MatchResult.fromJson(Map<String, dynamic> json) =>
      _$$_MatchResultFromJson(json);

  @override
  final int id;
  @override
  final Match match;
  @override
  final int homeScore;
  @override
  final int awayScore;

  @override
  String toString() {
    return 'MatchResult(id: $id, match: $match, homeScore: $homeScore, awayScore: $awayScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.homeScore, homeScore) ||
                other.homeScore == homeScore) &&
            (identical(other.awayScore, awayScore) ||
                other.awayScore == awayScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, match, homeScore, awayScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchResultCopyWith<_$_MatchResult> get copyWith =>
      __$$_MatchResultCopyWithImpl<_$_MatchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchResultToJson(
      this,
    );
  }
}

abstract class _MatchResult implements MatchResult {
  const factory _MatchResult(
      {required final int id,
      required final Match match,
      required final int homeScore,
      required final int awayScore}) = _$_MatchResult;

  factory _MatchResult.fromJson(Map<String, dynamic> json) =
      _$_MatchResult.fromJson;

  @override
  int get id;
  @override
  Match get match;
  @override
  int get homeScore;
  @override
  int get awayScore;
  @override
  @JsonKey(ignore: true)
  _$$_MatchResultCopyWith<_$_MatchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
