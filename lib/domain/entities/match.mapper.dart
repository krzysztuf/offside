// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match.dart';

class MatchMapper extends ClassMapperBase<Match> {
  MatchMapper._();

  static MatchMapper? _instance;
  static MatchMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchMapper._());
      TeamMapper.ensureInitialized();
      MatchOutcomeMapper.ensureInitialized();
      BetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Match';

  static int _$id(Match v) => v.id;
  static const Field<Match, int> _f$id = Field('id', _$id, opt: true, def: 0);
  static Team? _$homeTeam(Match v) => v.homeTeam;
  static const Field<Match, Team> _f$homeTeam = Field(
    'homeTeam',
    _$homeTeam,
    opt: true,
  );
  static Team? _$awayTeam(Match v) => v.awayTeam;
  static const Field<Match, Team> _f$awayTeam = Field(
    'awayTeam',
    _$awayTeam,
    opt: true,
  );
  static DateTime _$kickOffDate(Match v) => v.kickOffDate;
  static const Field<Match, DateTime> _f$kickOffDate = Field(
    'kickOffDate',
    _$kickOffDate,
  );
  static String _$stage(Match v) => v.stage;
  static const Field<Match, String> _f$stage = Field('stage', _$stage);
  static bool _$knockoutStage(Match v) => v.knockoutStage;
  static const Field<Match, bool> _f$knockoutStage = Field(
    'knockoutStage',
    _$knockoutStage,
  );
  static MatchOutcome? _$outcome(Match v) => v.outcome;
  static const Field<Match, MatchOutcome> _f$outcome = Field(
    'outcome',
    _$outcome,
    opt: true,
  );
  static List<Bet> _$bets(Match v) => v.bets;
  static const Field<Match, List<Bet>> _f$bets = Field(
    'bets',
    _$bets,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<Match> fields = const {
    #id: _f$id,
    #homeTeam: _f$homeTeam,
    #awayTeam: _f$awayTeam,
    #kickOffDate: _f$kickOffDate,
    #stage: _f$stage,
    #knockoutStage: _f$knockoutStage,
    #outcome: _f$outcome,
    #bets: _f$bets,
  };

  static Match _instantiate(DecodingData data) {
    return Match(
      id: data.dec(_f$id),
      homeTeam: data.dec(_f$homeTeam),
      awayTeam: data.dec(_f$awayTeam),
      kickOffDate: data.dec(_f$kickOffDate),
      stage: data.dec(_f$stage),
      knockoutStage: data.dec(_f$knockoutStage),
      outcome: data.dec(_f$outcome),
      bets: data.dec(_f$bets),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Match fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Match>(map);
  }

  static Match fromJson(String json) {
    return ensureInitialized().decodeJson<Match>(json);
  }
}

mixin MatchMappable {
  String toJson() {
    return MatchMapper.ensureInitialized().encodeJson<Match>(this as Match);
  }

  Map<String, dynamic> toMap() {
    return MatchMapper.ensureInitialized().encodeMap<Match>(this as Match);
  }

  MatchCopyWith<Match, Match, Match> get copyWith =>
      _MatchCopyWithImpl<Match, Match>(this as Match, $identity, $identity);
  @override
  String toString() {
    return MatchMapper.ensureInitialized().stringifyValue(this as Match);
  }

  @override
  bool operator ==(Object other) {
    return MatchMapper.ensureInitialized().equalsValue(this as Match, other);
  }

  @override
  int get hashCode {
    return MatchMapper.ensureInitialized().hashValue(this as Match);
  }
}

extension MatchValueCopy<$R, $Out> on ObjectCopyWith<$R, Match, $Out> {
  MatchCopyWith<$R, Match, $Out> get $asMatch =>
      $base.as((v, t, t2) => _MatchCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchCopyWith<$R, $In extends Match, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TeamCopyWith<$R, Team, Team>? get homeTeam;
  TeamCopyWith<$R, Team, Team>? get awayTeam;
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome>? get outcome;
  ListCopyWith<$R, Bet, BetCopyWith<$R, Bet, Bet>> get bets;
  $R call({
    int? id,
    Team? homeTeam,
    Team? awayTeam,
    DateTime? kickOffDate,
    String? stage,
    bool? knockoutStage,
    MatchOutcome? outcome,
    List<Bet>? bets,
  });
  MatchCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MatchCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Match, $Out>
    implements MatchCopyWith<$R, Match, $Out> {
  _MatchCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Match> $mapper = MatchMapper.ensureInitialized();
  @override
  TeamCopyWith<$R, Team, Team>? get homeTeam =>
      $value.homeTeam?.copyWith.$chain((v) => call(homeTeam: v));
  @override
  TeamCopyWith<$R, Team, Team>? get awayTeam =>
      $value.awayTeam?.copyWith.$chain((v) => call(awayTeam: v));
  @override
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome>? get outcome =>
      $value.outcome?.copyWith.$chain((v) => call(outcome: v));
  @override
  ListCopyWith<$R, Bet, BetCopyWith<$R, Bet, Bet>> get bets => ListCopyWith(
    $value.bets,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(bets: v),
  );
  @override
  $R call({
    int? id,
    Object? homeTeam = $none,
    Object? awayTeam = $none,
    DateTime? kickOffDate,
    String? stage,
    bool? knockoutStage,
    Object? outcome = $none,
    List<Bet>? bets,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (homeTeam != $none) #homeTeam: homeTeam,
      if (awayTeam != $none) #awayTeam: awayTeam,
      if (kickOffDate != null) #kickOffDate: kickOffDate,
      if (stage != null) #stage: stage,
      if (knockoutStage != null) #knockoutStage: knockoutStage,
      if (outcome != $none) #outcome: outcome,
      if (bets != null) #bets: bets,
    }),
  );
  @override
  Match $make(CopyWithData data) => Match(
    id: data.get(#id, or: $value.id),
    homeTeam: data.get(#homeTeam, or: $value.homeTeam),
    awayTeam: data.get(#awayTeam, or: $value.awayTeam),
    kickOffDate: data.get(#kickOffDate, or: $value.kickOffDate),
    stage: data.get(#stage, or: $value.stage),
    knockoutStage: data.get(#knockoutStage, or: $value.knockoutStage),
    outcome: data.get(#outcome, or: $value.outcome),
    bets: data.get(#bets, or: $value.bets),
  );

  @override
  MatchCopyWith<$R2, Match, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MatchCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

