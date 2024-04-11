// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MatchCardState {
  Match get match => throw _privateConstructorUsedError;
  Bet? get bet => throw _privateConstructorUsedError;
  BetState get betState => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchCardStateCopyWith<MatchCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCardStateCopyWith<$Res> {
  factory $MatchCardStateCopyWith(
          MatchCardState value, $Res Function(MatchCardState) then) =
      _$MatchCardStateCopyWithImpl<$Res, MatchCardState>;
  @useResult
  $Res call({Match match, Bet? bet, BetState betState, bool loading});

  $MatchCopyWith<$Res> get match;
  $BetCopyWith<$Res>? get bet;
}

/// @nodoc
class _$MatchCardStateCopyWithImpl<$Res, $Val extends MatchCardState>
    implements $MatchCardStateCopyWith<$Res> {
  _$MatchCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? bet = freezed,
    Object? betState = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      bet: freezed == bet
          ? _value.bet
          : bet // ignore: cast_nullable_to_non_nullable
              as Bet?,
      betState: null == betState
          ? _value.betState
          : betState // ignore: cast_nullable_to_non_nullable
              as BetState,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchCopyWith<$Res> get match {
    return $MatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BetCopyWith<$Res>? get bet {
    if (_value.bet == null) {
      return null;
    }

    return $BetCopyWith<$Res>(_value.bet!, (value) {
      return _then(_value.copyWith(bet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchCardStateImplCopyWith<$Res>
    implements $MatchCardStateCopyWith<$Res> {
  factory _$$MatchCardStateImplCopyWith(_$MatchCardStateImpl value,
          $Res Function(_$MatchCardStateImpl) then) =
      __$$MatchCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Match match, Bet? bet, BetState betState, bool loading});

  @override
  $MatchCopyWith<$Res> get match;
  @override
  $BetCopyWith<$Res>? get bet;
}

/// @nodoc
class __$$MatchCardStateImplCopyWithImpl<$Res>
    extends _$MatchCardStateCopyWithImpl<$Res, _$MatchCardStateImpl>
    implements _$$MatchCardStateImplCopyWith<$Res> {
  __$$MatchCardStateImplCopyWithImpl(
      _$MatchCardStateImpl _value, $Res Function(_$MatchCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? bet = freezed,
    Object? betState = null,
    Object? loading = null,
  }) {
    return _then(_$MatchCardStateImpl(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      bet: freezed == bet
          ? _value.bet
          : bet // ignore: cast_nullable_to_non_nullable
              as Bet?,
      betState: null == betState
          ? _value.betState
          : betState // ignore: cast_nullable_to_non_nullable
              as BetState,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MatchCardStateImpl extends _MatchCardState {
  const _$MatchCardStateImpl(
      {required this.match,
      this.bet,
      this.betState = BetState.notPlaced,
      this.loading = false})
      : super._();

  @override
  final Match match;
  @override
  final Bet? bet;
  @override
  @JsonKey()
  final BetState betState;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'MatchCardState(match: $match, bet: $bet, betState: $betState, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchCardStateImpl &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.bet, bet) || other.bet == bet) &&
            (identical(other.betState, betState) ||
                other.betState == betState) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, match, bet, betState, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchCardStateImplCopyWith<_$MatchCardStateImpl> get copyWith =>
      __$$MatchCardStateImplCopyWithImpl<_$MatchCardStateImpl>(
          this, _$identity);
}

abstract class _MatchCardState extends MatchCardState {
  const factory _MatchCardState(
      {required final Match match,
      final Bet? bet,
      final BetState betState,
      final bool loading}) = _$MatchCardStateImpl;
  const _MatchCardState._() : super._();

  @override
  Match get match;
  @override
  Bet? get bet;
  @override
  BetState get betState;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$MatchCardStateImplCopyWith<_$MatchCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
