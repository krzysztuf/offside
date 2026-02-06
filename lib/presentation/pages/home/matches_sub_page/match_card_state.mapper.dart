// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match_card_state.dart';

class MatchCardStateMapper extends ClassMapperBase<MatchCardState> {
  MatchCardStateMapper._();

  static MatchCardStateMapper? _instance;
  static MatchCardStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchCardStateMapper._());
      MatchMapper.ensureInitialized();
      BetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MatchCardState';

  static Match _$match(MatchCardState v) => v.match;
  static const Field<MatchCardState, Match> _f$match = Field('match', _$match);
  static Bet? _$bet(MatchCardState v) => v.bet;
  static const Field<MatchCardState, Bet> _f$bet = Field(
    'bet',
    _$bet,
    opt: true,
  );
  static BetState _$betState(MatchCardState v) => v.betState;
  static const Field<MatchCardState, BetState> _f$betState = Field(
    'betState',
    _$betState,
    opt: true,
    def: BetState.notPlaced,
  );
  static bool _$loading(MatchCardState v) => v.loading;
  static const Field<MatchCardState, bool> _f$loading = Field(
    'loading',
    _$loading,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<MatchCardState> fields = const {
    #match: _f$match,
    #bet: _f$bet,
    #betState: _f$betState,
    #loading: _f$loading,
  };

  static MatchCardState _instantiate(DecodingData data) {
    return MatchCardState(
      match: data.dec(_f$match),
      bet: data.dec(_f$bet),
      betState: data.dec(_f$betState),
      loading: data.dec(_f$loading),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MatchCardState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MatchCardState>(map);
  }

  static MatchCardState fromJson(String json) {
    return ensureInitialized().decodeJson<MatchCardState>(json);
  }
}

mixin MatchCardStateMappable {
  String toJson() {
    return MatchCardStateMapper.ensureInitialized().encodeJson<MatchCardState>(
      this as MatchCardState,
    );
  }

  Map<String, dynamic> toMap() {
    return MatchCardStateMapper.ensureInitialized().encodeMap<MatchCardState>(
      this as MatchCardState,
    );
  }

  MatchCardStateCopyWith<MatchCardState, MatchCardState, MatchCardState>
  get copyWith => _MatchCardStateCopyWithImpl<MatchCardState, MatchCardState>(
    this as MatchCardState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MatchCardStateMapper.ensureInitialized().stringifyValue(
      this as MatchCardState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MatchCardStateMapper.ensureInitialized().equalsValue(
      this as MatchCardState,
      other,
    );
  }

  @override
  int get hashCode {
    return MatchCardStateMapper.ensureInitialized().hashValue(
      this as MatchCardState,
    );
  }
}

extension MatchCardStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MatchCardState, $Out> {
  MatchCardStateCopyWith<$R, MatchCardState, $Out> get $asMatchCardState =>
      $base.as((v, t, t2) => _MatchCardStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchCardStateCopyWith<$R, $In extends MatchCardState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MatchCopyWith<$R, Match, Match> get match;
  BetCopyWith<$R, Bet, Bet>? get bet;
  $R call({Match? match, Bet? bet, BetState? betState, bool? loading});
  MatchCardStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MatchCardStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MatchCardState, $Out>
    implements MatchCardStateCopyWith<$R, MatchCardState, $Out> {
  _MatchCardStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MatchCardState> $mapper =
      MatchCardStateMapper.ensureInitialized();
  @override
  MatchCopyWith<$R, Match, Match> get match =>
      $value.match.copyWith.$chain((v) => call(match: v));
  @override
  BetCopyWith<$R, Bet, Bet>? get bet =>
      $value.bet?.copyWith.$chain((v) => call(bet: v));
  @override
  $R call({
    Match? match,
    Object? bet = $none,
    BetState? betState,
    bool? loading,
  }) => $apply(
    FieldCopyWithData({
      if (match != null) #match: match,
      if (bet != $none) #bet: bet,
      if (betState != null) #betState: betState,
      if (loading != null) #loading: loading,
    }),
  );
  @override
  MatchCardState $make(CopyWithData data) => MatchCardState(
    match: data.get(#match, or: $value.match),
    bet: data.get(#bet, or: $value.bet),
    betState: data.get(#betState, or: $value.betState),
    loading: data.get(#loading, or: $value.loading),
  );

  @override
  MatchCardStateCopyWith<$R2, MatchCardState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MatchCardStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

