// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bets_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MatchBetsState {
  bool get loading => throw _privateConstructorUsedError;
  Match get match => throw _privateConstructorUsedError;
  List<UserPrediction> get bets => throw _privateConstructorUsedError;

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchBetsStateCopyWith<MatchBetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchBetsStateCopyWith<$Res> {
  factory $MatchBetsStateCopyWith(
          MatchBetsState value, $Res Function(MatchBetsState) then) =
      _$MatchBetsStateCopyWithImpl<$Res, MatchBetsState>;
  @useResult
  $Res call({bool loading, Match match, List<UserPrediction> bets});

  $MatchCopyWith<$Res> get match;
}

/// @nodoc
class _$MatchBetsStateCopyWithImpl<$Res, $Val extends MatchBetsState>
    implements $MatchBetsStateCopyWith<$Res> {
  _$MatchBetsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? match = null,
    Object? bets = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<UserPrediction>,
    ) as $Val);
  }

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchCopyWith<$Res> get match {
    return $MatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchBetsStateImplCopyWith<$Res>
    implements $MatchBetsStateCopyWith<$Res> {
  factory _$$MatchBetsStateImplCopyWith(_$MatchBetsStateImpl value,
          $Res Function(_$MatchBetsStateImpl) then) =
      __$$MatchBetsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Match match, List<UserPrediction> bets});

  @override
  $MatchCopyWith<$Res> get match;
}

/// @nodoc
class __$$MatchBetsStateImplCopyWithImpl<$Res>
    extends _$MatchBetsStateCopyWithImpl<$Res, _$MatchBetsStateImpl>
    implements _$$MatchBetsStateImplCopyWith<$Res> {
  __$$MatchBetsStateImplCopyWithImpl(
      _$MatchBetsStateImpl _value, $Res Function(_$MatchBetsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? match = null,
    Object? bets = null,
  }) {
    return _then(_$MatchBetsStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      bets: null == bets
          ? _value._bets
          : bets // ignore: cast_nullable_to_non_nullable
              as List<UserPrediction>,
    ));
  }
}

/// @nodoc

class _$MatchBetsStateImpl extends _MatchBetsState {
  const _$MatchBetsStateImpl(
      {required this.loading,
      required this.match,
      final List<UserPrediction> bets = const []})
      : _bets = bets,
        super._();

  @override
  final bool loading;
  @override
  final Match match;
  final List<UserPrediction> _bets;
  @override
  @JsonKey()
  List<UserPrediction> get bets {
    if (_bets is EqualUnmodifiableListView) return _bets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bets);
  }

  @override
  String toString() {
    return 'MatchBetsState(loading: $loading, match: $match, bets: $bets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchBetsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.match, match) || other.match == match) &&
            const DeepCollectionEquality().equals(other._bets, _bets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, match, const DeepCollectionEquality().hash(_bets));

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchBetsStateImplCopyWith<_$MatchBetsStateImpl> get copyWith =>
      __$$MatchBetsStateImplCopyWithImpl<_$MatchBetsStateImpl>(
          this, _$identity);
}

abstract class _MatchBetsState extends MatchBetsState {
  const factory _MatchBetsState(
      {required final bool loading,
      required final Match match,
      final List<UserPrediction> bets}) = _$MatchBetsStateImpl;
  const _MatchBetsState._() : super._();

  @override
  bool get loading;
  @override
  Match get match;
  @override
  List<UserPrediction> get bets;

  /// Create a copy of MatchBetsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchBetsStateImplCopyWith<_$MatchBetsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
