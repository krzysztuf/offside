// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match_bets_state.dart';

class MatchBetsStateMapper extends ClassMapperBase<MatchBetsState> {
  MatchBetsStateMapper._();

  static MatchBetsStateMapper? _instance;
  static MatchBetsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchBetsStateMapper._());
      MatchMapper.ensureInitialized();
      UserPredictionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MatchBetsState';

  static bool _$loading(MatchBetsState v) => v.loading;
  static const Field<MatchBetsState, bool> _f$loading = Field(
    'loading',
    _$loading,
  );
  static Match _$match(MatchBetsState v) => v.match;
  static const Field<MatchBetsState, Match> _f$match = Field('match', _$match);
  static List<UserPrediction> _$bets(MatchBetsState v) => v.bets;
  static const Field<MatchBetsState, List<UserPrediction>> _f$bets = Field(
    'bets',
    _$bets,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MatchBetsState> fields = const {
    #loading: _f$loading,
    #match: _f$match,
    #bets: _f$bets,
  };

  static MatchBetsState _instantiate(DecodingData data) {
    return MatchBetsState(
      loading: data.dec(_f$loading),
      match: data.dec(_f$match),
      bets: data.dec(_f$bets),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MatchBetsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MatchBetsState>(map);
  }

  static MatchBetsState fromJson(String json) {
    return ensureInitialized().decodeJson<MatchBetsState>(json);
  }
}

mixin MatchBetsStateMappable {
  String toJson() {
    return MatchBetsStateMapper.ensureInitialized().encodeJson<MatchBetsState>(
      this as MatchBetsState,
    );
  }

  Map<String, dynamic> toMap() {
    return MatchBetsStateMapper.ensureInitialized().encodeMap<MatchBetsState>(
      this as MatchBetsState,
    );
  }

  MatchBetsStateCopyWith<MatchBetsState, MatchBetsState, MatchBetsState>
  get copyWith => _MatchBetsStateCopyWithImpl<MatchBetsState, MatchBetsState>(
    this as MatchBetsState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MatchBetsStateMapper.ensureInitialized().stringifyValue(
      this as MatchBetsState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MatchBetsStateMapper.ensureInitialized().equalsValue(
      this as MatchBetsState,
      other,
    );
  }

  @override
  int get hashCode {
    return MatchBetsStateMapper.ensureInitialized().hashValue(
      this as MatchBetsState,
    );
  }
}

extension MatchBetsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MatchBetsState, $Out> {
  MatchBetsStateCopyWith<$R, MatchBetsState, $Out> get $asMatchBetsState =>
      $base.as((v, t, t2) => _MatchBetsStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchBetsStateCopyWith<$R, $In extends MatchBetsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MatchCopyWith<$R, Match, Match> get match;
  ListCopyWith<
    $R,
    UserPrediction,
    UserPredictionCopyWith<$R, UserPrediction, UserPrediction>
  >
  get bets;
  $R call({bool? loading, Match? match, List<UserPrediction>? bets});
  MatchBetsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MatchBetsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MatchBetsState, $Out>
    implements MatchBetsStateCopyWith<$R, MatchBetsState, $Out> {
  _MatchBetsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MatchBetsState> $mapper =
      MatchBetsStateMapper.ensureInitialized();
  @override
  MatchCopyWith<$R, Match, Match> get match =>
      $value.match.copyWith.$chain((v) => call(match: v));
  @override
  ListCopyWith<
    $R,
    UserPrediction,
    UserPredictionCopyWith<$R, UserPrediction, UserPrediction>
  >
  get bets => ListCopyWith(
    $value.bets,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(bets: v),
  );
  @override
  $R call({bool? loading, Match? match, List<UserPrediction>? bets}) => $apply(
    FieldCopyWithData({
      if (loading != null) #loading: loading,
      if (match != null) #match: match,
      if (bets != null) #bets: bets,
    }),
  );
  @override
  MatchBetsState $make(CopyWithData data) => MatchBetsState(
    loading: data.get(#loading, or: $value.loading),
    match: data.get(#match, or: $value.match),
    bets: data.get(#bets, or: $value.bets),
  );

  @override
  MatchBetsStateCopyWith<$R2, MatchBetsState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MatchBetsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

