// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchOutcome _$MatchOutcomeFromJson(Map<String, dynamic> json) {
  return _MatchOutcome.fromJson(json);
}

/// @nodoc
mixin _$MatchOutcome {
  Goals get goals => throw _privateConstructorUsedError;
  String? get penaltiesWinnerId => throw _privateConstructorUsedError;

  /// Serializes this MatchOutcome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchOutcomeCopyWith<MatchOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchOutcomeCopyWith<$Res> {
  factory $MatchOutcomeCopyWith(
          MatchOutcome value, $Res Function(MatchOutcome) then) =
      _$MatchOutcomeCopyWithImpl<$Res, MatchOutcome>;
  @useResult
  $Res call({Goals goals, String? penaltiesWinnerId});

  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$MatchOutcomeCopyWithImpl<$Res, $Val extends MatchOutcome>
    implements $MatchOutcomeCopyWith<$Res> {
  _$MatchOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? penaltiesWinnerId = freezed,
  }) {
    return _then(_value.copyWith(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      penaltiesWinnerId: freezed == penaltiesWinnerId
          ? _value.penaltiesWinnerId
          : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchOutcomeImplCopyWith<$Res>
    implements $MatchOutcomeCopyWith<$Res> {
  factory _$$MatchOutcomeImplCopyWith(
          _$MatchOutcomeImpl value, $Res Function(_$MatchOutcomeImpl) then) =
      __$$MatchOutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Goals goals, String? penaltiesWinnerId});

  @override
  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class __$$MatchOutcomeImplCopyWithImpl<$Res>
    extends _$MatchOutcomeCopyWithImpl<$Res, _$MatchOutcomeImpl>
    implements _$$MatchOutcomeImplCopyWith<$Res> {
  __$$MatchOutcomeImplCopyWithImpl(
      _$MatchOutcomeImpl _value, $Res Function(_$MatchOutcomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? penaltiesWinnerId = freezed,
  }) {
    return _then(_$MatchOutcomeImpl(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      penaltiesWinnerId: freezed == penaltiesWinnerId
          ? _value.penaltiesWinnerId
          : penaltiesWinnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchOutcomeImpl extends _MatchOutcome {
  const _$MatchOutcomeImpl(
      {this.goals = const Goals(), this.penaltiesWinnerId = null})
      : super._();

  factory _$MatchOutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchOutcomeImplFromJson(json);

  @override
  @JsonKey()
  final Goals goals;
  @override
  @JsonKey()
  final String? penaltiesWinnerId;

  @override
  String toString() {
    return 'MatchOutcome(goals: $goals, penaltiesWinnerId: $penaltiesWinnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchOutcomeImpl &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.penaltiesWinnerId, penaltiesWinnerId) ||
                other.penaltiesWinnerId == penaltiesWinnerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, goals, penaltiesWinnerId);

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchOutcomeImplCopyWith<_$MatchOutcomeImpl> get copyWith =>
      __$$MatchOutcomeImplCopyWithImpl<_$MatchOutcomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchOutcomeImplToJson(
      this,
    );
  }
}

abstract class _MatchOutcome extends MatchOutcome {
  const factory _MatchOutcome(
      {final Goals goals,
      final String? penaltiesWinnerId}) = _$MatchOutcomeImpl;
  const _MatchOutcome._() : super._();

  factory _MatchOutcome.fromJson(Map<String, dynamic> json) =
      _$MatchOutcomeImpl.fromJson;

  @override
  Goals get goals;
  @override
  String? get penaltiesWinnerId;

  /// Create a copy of MatchOutcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchOutcomeImplCopyWith<_$MatchOutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
