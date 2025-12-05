// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bet _$BetFromJson(Map<String, dynamic> json) {
  return _Bet.fromJson(json);
}

/// @nodoc
mixin _$Bet {
// ignore: invalid_annotation_target
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get matchId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  MatchOutcome get prediction => throw _privateConstructorUsedError;

  /// Serializes this Bet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BetCopyWith<Bet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetCopyWith<$Res> {
  factory $BetCopyWith(Bet value, $Res Function(Bet) then) =
      _$BetCopyWithImpl<$Res, Bet>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      String matchId,
      String userId,
      MatchOutcome prediction});

  $MatchOutcomeCopyWith<$Res> get prediction;
}

/// @nodoc
class _$BetCopyWithImpl<$Res, $Val extends Bet> implements $BetCopyWith<$Res> {
  _$BetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? userId = null,
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as MatchOutcome,
    ) as $Val);
  }

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchOutcomeCopyWith<$Res> get prediction {
    return $MatchOutcomeCopyWith<$Res>(_value.prediction, (value) {
      return _then(_value.copyWith(prediction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BetImplCopyWith<$Res> implements $BetCopyWith<$Res> {
  factory _$$BetImplCopyWith(_$BetImpl value, $Res Function(_$BetImpl) then) =
      __$$BetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      String matchId,
      String userId,
      MatchOutcome prediction});

  @override
  $MatchOutcomeCopyWith<$Res> get prediction;
}

/// @nodoc
class __$$BetImplCopyWithImpl<$Res> extends _$BetCopyWithImpl<$Res, _$BetImpl>
    implements _$$BetImplCopyWith<$Res> {
  __$$BetImplCopyWithImpl(_$BetImpl _value, $Res Function(_$BetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? userId = null,
    Object? prediction = null,
  }) {
    return _then(_$BetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as MatchOutcome,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BetImpl implements _Bet {
  const _$BetImpl(
      {@JsonKey(includeToJson: false) this.id = '',
      required this.matchId,
      required this.userId,
      required this.prediction});

  factory _$BetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BetImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  final String matchId;
  @override
  final String userId;
  @override
  final MatchOutcome prediction;

  @override
  String toString() {
    return 'Bet(id: $id, matchId: $matchId, userId: $userId, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, matchId, userId, prediction);

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      __$$BetImplCopyWithImpl<_$BetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BetImplToJson(
      this,
    );
  }
}

abstract class _Bet implements Bet {
  const factory _Bet(
      {@JsonKey(includeToJson: false) final String id,
      required final String matchId,
      required final String userId,
      required final MatchOutcome prediction}) = _$BetImpl;

  factory _Bet.fromJson(Map<String, dynamic> json) = _$BetImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  String get matchId;
  @override
  String get userId;
  @override
  MatchOutcome get prediction;

  /// Create a copy of Bet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
