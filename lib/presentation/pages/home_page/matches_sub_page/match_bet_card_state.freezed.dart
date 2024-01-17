// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bet_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchBetCardState {
  Match get match => throw _privateConstructorUsedError;
  Bet? get bet => throw _privateConstructorUsedError;
  BetState get betState => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchBetCardStateCopyWith<MatchBetCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchBetCardStateCopyWith<$Res> {
  factory $MatchBetCardStateCopyWith(
          MatchBetCardState value, $Res Function(MatchBetCardState) then) =
      _$MatchBetCardStateCopyWithImpl<$Res, MatchBetCardState>;
  @useResult
  $Res call({Match match, Bet? bet, BetState betState, bool loading});

  $MatchCopyWith<$Res> get match;
  $BetCopyWith<$Res>? get bet;
}

/// @nodoc
class _$MatchBetCardStateCopyWithImpl<$Res, $Val extends MatchBetCardState>
    implements $MatchBetCardStateCopyWith<$Res> {
  _$MatchBetCardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$MatchBetCardStateImplCopyWith<$Res>
    implements $MatchBetCardStateCopyWith<$Res> {
  factory _$$MatchBetCardStateImplCopyWith(_$MatchBetCardStateImpl value,
          $Res Function(_$MatchBetCardStateImpl) then) =
      __$$MatchBetCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Match match, Bet? bet, BetState betState, bool loading});

  @override
  $MatchCopyWith<$Res> get match;
  @override
  $BetCopyWith<$Res>? get bet;
}

/// @nodoc
class __$$MatchBetCardStateImplCopyWithImpl<$Res>
    extends _$MatchBetCardStateCopyWithImpl<$Res, _$MatchBetCardStateImpl>
    implements _$$MatchBetCardStateImplCopyWith<$Res> {
  __$$MatchBetCardStateImplCopyWithImpl(_$MatchBetCardStateImpl _value,
      $Res Function(_$MatchBetCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? bet = freezed,
    Object? betState = null,
    Object? loading = null,
  }) {
    return _then(_$MatchBetCardStateImpl(
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

class _$MatchBetCardStateImpl extends _MatchBetCardState {
  const _$MatchBetCardStateImpl(
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
    return 'MatchBetCardState(match: $match, bet: $bet, betState: $betState, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchBetCardStateImpl &&
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
  _$$MatchBetCardStateImplCopyWith<_$MatchBetCardStateImpl> get copyWith =>
      __$$MatchBetCardStateImplCopyWithImpl<_$MatchBetCardStateImpl>(
          this, _$identity);
}

abstract class _MatchBetCardState extends MatchBetCardState {
  const factory _MatchBetCardState(
      {required final Match match,
      final Bet? bet,
      final BetState betState,
      final bool loading}) = _$MatchBetCardStateImpl;
  const _MatchBetCardState._() : super._();

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
  _$$MatchBetCardStateImplCopyWith<_$MatchBetCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
