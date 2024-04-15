// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition_winner_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompetitionWinnerPickerState {
  Team? get winnerPrediction => throw _privateConstructorUsedError;
  List<Team> get teams => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompetitionWinnerPickerStateCopyWith<CompetitionWinnerPickerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionWinnerPickerStateCopyWith<$Res> {
  factory $CompetitionWinnerPickerStateCopyWith(
          CompetitionWinnerPickerState value,
          $Res Function(CompetitionWinnerPickerState) then) =
      _$CompetitionWinnerPickerStateCopyWithImpl<$Res,
          CompetitionWinnerPickerState>;
  @useResult
  $Res call({Team? winnerPrediction, List<Team> teams, bool loading});

  $TeamCopyWith<$Res>? get winnerPrediction;
}

/// @nodoc
class _$CompetitionWinnerPickerStateCopyWithImpl<$Res,
        $Val extends CompetitionWinnerPickerState>
    implements $CompetitionWinnerPickerStateCopyWith<$Res> {
  _$CompetitionWinnerPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerPrediction = freezed,
    Object? teams = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      winnerPrediction: freezed == winnerPrediction
          ? _value.winnerPrediction
          : winnerPrediction // ignore: cast_nullable_to_non_nullable
              as Team?,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get winnerPrediction {
    if (_value.winnerPrediction == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.winnerPrediction!, (value) {
      return _then(_value.copyWith(winnerPrediction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompetitionWinnerPickerStateImplCopyWith<$Res>
    implements $CompetitionWinnerPickerStateCopyWith<$Res> {
  factory _$$CompetitionWinnerPickerStateImplCopyWith(
          _$CompetitionWinnerPickerStateImpl value,
          $Res Function(_$CompetitionWinnerPickerStateImpl) then) =
      __$$CompetitionWinnerPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team? winnerPrediction, List<Team> teams, bool loading});

  @override
  $TeamCopyWith<$Res>? get winnerPrediction;
}

/// @nodoc
class __$$CompetitionWinnerPickerStateImplCopyWithImpl<$Res>
    extends _$CompetitionWinnerPickerStateCopyWithImpl<$Res,
        _$CompetitionWinnerPickerStateImpl>
    implements _$$CompetitionWinnerPickerStateImplCopyWith<$Res> {
  __$$CompetitionWinnerPickerStateImplCopyWithImpl(
      _$CompetitionWinnerPickerStateImpl _value,
      $Res Function(_$CompetitionWinnerPickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerPrediction = freezed,
    Object? teams = null,
    Object? loading = null,
  }) {
    return _then(_$CompetitionWinnerPickerStateImpl(
      winnerPrediction: freezed == winnerPrediction
          ? _value.winnerPrediction
          : winnerPrediction // ignore: cast_nullable_to_non_nullable
              as Team?,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompetitionWinnerPickerStateImpl extends _CompetitionWinnerPickerState {
  const _$CompetitionWinnerPickerStateImpl(
      {this.winnerPrediction,
      final List<Team> teams = const [],
      this.loading = true})
      : _teams = teams,
        super._();

  @override
  final Team? winnerPrediction;
  final List<Team> _teams;
  @override
  @JsonKey()
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'CompetitionWinnerPickerState(winnerPrediction: $winnerPrediction, teams: $teams, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetitionWinnerPickerStateImpl &&
            (identical(other.winnerPrediction, winnerPrediction) ||
                other.winnerPrediction == winnerPrediction) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, winnerPrediction,
      const DeepCollectionEquality().hash(_teams), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetitionWinnerPickerStateImplCopyWith<
          _$CompetitionWinnerPickerStateImpl>
      get copyWith => __$$CompetitionWinnerPickerStateImplCopyWithImpl<
          _$CompetitionWinnerPickerStateImpl>(this, _$identity);
}

abstract class _CompetitionWinnerPickerState
    extends CompetitionWinnerPickerState {
  const factory _CompetitionWinnerPickerState(
      {final Team? winnerPrediction,
      final List<Team> teams,
      final bool loading}) = _$CompetitionWinnerPickerStateImpl;
  const _CompetitionWinnerPickerState._() : super._();

  @override
  Team? get winnerPrediction;
  @override
  List<Team> get teams;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$CompetitionWinnerPickerStateImplCopyWith<
          _$CompetitionWinnerPickerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
