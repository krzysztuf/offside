// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_match_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewMatchDialogState {
  List<Team> get teams => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMatchDialogStateCopyWith<NewMatchDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMatchDialogStateCopyWith<$Res> {
  factory $NewMatchDialogStateCopyWith(
          NewMatchDialogState value, $Res Function(NewMatchDialogState) then) =
      _$NewMatchDialogStateCopyWithImpl<$Res, NewMatchDialogState>;
  @useResult
  $Res call({List<Team> teams, bool loading});
}

/// @nodoc
class _$NewMatchDialogStateCopyWithImpl<$Res, $Val extends NewMatchDialogState>
    implements $NewMatchDialogStateCopyWith<$Res> {
  _$NewMatchDialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$NewMatchDialogStateImplCopyWith<$Res>
    implements $NewMatchDialogStateCopyWith<$Res> {
  factory _$$NewMatchDialogStateImplCopyWith(_$NewMatchDialogStateImpl value,
          $Res Function(_$NewMatchDialogStateImpl) then) =
      __$$NewMatchDialogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Team> teams, bool loading});
}

/// @nodoc
class __$$NewMatchDialogStateImplCopyWithImpl<$Res>
    extends _$NewMatchDialogStateCopyWithImpl<$Res, _$NewMatchDialogStateImpl>
    implements _$$NewMatchDialogStateImplCopyWith<$Res> {
  __$$NewMatchDialogStateImplCopyWithImpl(_$NewMatchDialogStateImpl _value,
      $Res Function(_$NewMatchDialogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = null,
    Object? loading = null,
  }) {
    return _then(_$NewMatchDialogStateImpl(
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

class _$NewMatchDialogStateImpl extends _NewMatchDialogState {
  const _$NewMatchDialogStateImpl(
      {required final List<Team> teams, required this.loading})
      : _teams = teams,
        super._();

  final List<Team> _teams;
  @override
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  final bool loading;

  @override
  String toString() {
    return 'NewMatchDialogState(teams: $teams, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMatchDialogStateImpl &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teams), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMatchDialogStateImplCopyWith<_$NewMatchDialogStateImpl> get copyWith =>
      __$$NewMatchDialogStateImplCopyWithImpl<_$NewMatchDialogStateImpl>(
          this, _$identity);
}

abstract class _NewMatchDialogState extends NewMatchDialogState {
  const factory _NewMatchDialogState(
      {required final List<Team> teams,
      required final bool loading}) = _$NewMatchDialogStateImpl;
  const _NewMatchDialogState._() : super._();

  @override
  List<Team> get teams;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$NewMatchDialogStateImplCopyWith<_$NewMatchDialogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
