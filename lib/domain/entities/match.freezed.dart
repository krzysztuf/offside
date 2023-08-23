// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  String get id => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;
  Team get awayTeam => throw _privateConstructorUsedError;
  MatchResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call({String id, Team homeTeam, Team awayTeam, MatchResult? result});

  $TeamCopyWith<$Res> get homeTeam;
  $TeamCopyWith<$Res> get awayTeam;
  $MatchResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MatchResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get homeTeam {
    return $TeamCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get awayTeam {
    return $TeamCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $MatchResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$_MatchCopyWith(_$_Match value, $Res Function(_$_Match) then) =
      __$$_MatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Team homeTeam, Team awayTeam, MatchResult? result});

  @override
  $TeamCopyWith<$Res> get homeTeam;
  @override
  $TeamCopyWith<$Res> get awayTeam;
  @override
  $MatchResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_MatchCopyWithImpl<$Res> extends _$MatchCopyWithImpl<$Res, _$_Match>
    implements _$$_MatchCopyWith<$Res> {
  __$$_MatchCopyWithImpl(_$_Match _value, $Res Function(_$_Match) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? result = freezed,
  }) {
    return _then(_$_Match(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MatchResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Match implements _Match {
  const _$_Match(
      {required this.id,
      required this.homeTeam,
      required this.awayTeam,
      this.result});

  factory _$_Match.fromJson(Map<String, dynamic> json) =>
      _$$_MatchFromJson(json);

  @override
  final String id;
  @override
  final Team homeTeam;
  @override
  final Team awayTeam;
  @override
  final MatchResult? result;

  @override
  String toString() {
    return 'Match(id: $id, homeTeam: $homeTeam, awayTeam: $awayTeam, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Match &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, homeTeam, awayTeam, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchCopyWith<_$_Match> get copyWith =>
      __$$_MatchCopyWithImpl<_$_Match>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchToJson(
      this,
    );
  }
}

abstract class _Match implements Match {
  const factory _Match(
      {required final String id,
      required final Team homeTeam,
      required final Team awayTeam,
      final MatchResult? result}) = _$_Match;

  factory _Match.fromJson(Map<String, dynamic> json) = _$_Match.fromJson;

  @override
  String get id;
  @override
  Team get homeTeam;
  @override
  Team get awayTeam;
  @override
  MatchResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_MatchCopyWith<_$_Match> get copyWith =>
      throw _privateConstructorUsedError;
}
