// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_goals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchGoals _$MatchGoalsFromJson(Map<String, dynamic> json) {
  return _MatchGoals.fromJson(json);
}

/// @nodoc
mixin _$MatchGoals {
  int get home => throw _privateConstructorUsedError;
  int get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchGoalsCopyWith<MatchGoals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchGoalsCopyWith<$Res> {
  factory $MatchGoalsCopyWith(
          MatchGoals value, $Res Function(MatchGoals) then) =
      _$MatchGoalsCopyWithImpl<$Res, MatchGoals>;
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class _$MatchGoalsCopyWithImpl<$Res, $Val extends MatchGoals>
    implements $MatchGoalsCopyWith<$Res> {
  _$MatchGoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchGoalsImplCopyWith<$Res>
    implements $MatchGoalsCopyWith<$Res> {
  factory _$$MatchGoalsImplCopyWith(
          _$MatchGoalsImpl value, $Res Function(_$MatchGoalsImpl) then) =
      __$$MatchGoalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int home, int away});
}

/// @nodoc
class __$$MatchGoalsImplCopyWithImpl<$Res>
    extends _$MatchGoalsCopyWithImpl<$Res, _$MatchGoalsImpl>
    implements _$$MatchGoalsImplCopyWith<$Res> {
  __$$MatchGoalsImplCopyWithImpl(
      _$MatchGoalsImpl _value, $Res Function(_$MatchGoalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$MatchGoalsImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchGoalsImpl extends _MatchGoals {
  const _$MatchGoalsImpl({required this.home, required this.away}) : super._();

  factory _$MatchGoalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchGoalsImplFromJson(json);

  @override
  final int home;
  @override
  final int away;

  @override
  String toString() {
    return 'MatchGoals(home: $home, away: $away)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchGoalsImpl &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchGoalsImplCopyWith<_$MatchGoalsImpl> get copyWith =>
      __$$MatchGoalsImplCopyWithImpl<_$MatchGoalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchGoalsImplToJson(
      this,
    );
  }
}

abstract class _MatchGoals extends MatchGoals {
  const factory _MatchGoals(
      {required final int home, required final int away}) = _$MatchGoalsImpl;
  const _MatchGoals._() : super._();

  factory _MatchGoals.fromJson(Map<String, dynamic> json) =
      _$MatchGoalsImpl.fromJson;

  @override
  int get home;
  @override
  int get away;
  @override
  @JsonKey(ignore: true)
  _$$MatchGoalsImplCopyWith<_$MatchGoalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
