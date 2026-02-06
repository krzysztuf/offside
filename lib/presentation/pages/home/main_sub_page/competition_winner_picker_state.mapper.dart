// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'competition_winner_picker_state.dart';

class CompetitionWinnerPickerStateMapper
    extends ClassMapperBase<CompetitionWinnerPickerState> {
  CompetitionWinnerPickerStateMapper._();

  static CompetitionWinnerPickerStateMapper? _instance;
  static CompetitionWinnerPickerStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = CompetitionWinnerPickerStateMapper._(),
      );
      TeamMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CompetitionWinnerPickerState';

  static Team? _$winnerPrediction(CompetitionWinnerPickerState v) =>
      v.winnerPrediction;
  static const Field<CompetitionWinnerPickerState, Team> _f$winnerPrediction =
      Field('winnerPrediction', _$winnerPrediction, opt: true);
  static List<Team> _$teams(CompetitionWinnerPickerState v) => v.teams;
  static const Field<CompetitionWinnerPickerState, List<Team>> _f$teams = Field(
    'teams',
    _$teams,
    opt: true,
    def: const [],
  );
  static bool _$loading(CompetitionWinnerPickerState v) => v.loading;
  static const Field<CompetitionWinnerPickerState, bool> _f$loading = Field(
    'loading',
    _$loading,
    opt: true,
    def: true,
  );
  static bool _$saving(CompetitionWinnerPickerState v) => v.saving;
  static const Field<CompetitionWinnerPickerState, bool> _f$saving = Field(
    'saving',
    _$saving,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<CompetitionWinnerPickerState> fields = const {
    #winnerPrediction: _f$winnerPrediction,
    #teams: _f$teams,
    #loading: _f$loading,
    #saving: _f$saving,
  };

  static CompetitionWinnerPickerState _instantiate(DecodingData data) {
    return CompetitionWinnerPickerState(
      winnerPrediction: data.dec(_f$winnerPrediction),
      teams: data.dec(_f$teams),
      loading: data.dec(_f$loading),
      saving: data.dec(_f$saving),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CompetitionWinnerPickerState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompetitionWinnerPickerState>(map);
  }

  static CompetitionWinnerPickerState fromJson(String json) {
    return ensureInitialized().decodeJson<CompetitionWinnerPickerState>(json);
  }
}

mixin CompetitionWinnerPickerStateMappable {
  String toJson() {
    return CompetitionWinnerPickerStateMapper.ensureInitialized()
        .encodeJson<CompetitionWinnerPickerState>(
          this as CompetitionWinnerPickerState,
        );
  }

  Map<String, dynamic> toMap() {
    return CompetitionWinnerPickerStateMapper.ensureInitialized()
        .encodeMap<CompetitionWinnerPickerState>(
          this as CompetitionWinnerPickerState,
        );
  }

  CompetitionWinnerPickerStateCopyWith<
    CompetitionWinnerPickerState,
    CompetitionWinnerPickerState,
    CompetitionWinnerPickerState
  >
  get copyWith =>
      _CompetitionWinnerPickerStateCopyWithImpl<
        CompetitionWinnerPickerState,
        CompetitionWinnerPickerState
      >(this as CompetitionWinnerPickerState, $identity, $identity);
  @override
  String toString() {
    return CompetitionWinnerPickerStateMapper.ensureInitialized()
        .stringifyValue(this as CompetitionWinnerPickerState);
  }

  @override
  bool operator ==(Object other) {
    return CompetitionWinnerPickerStateMapper.ensureInitialized().equalsValue(
      this as CompetitionWinnerPickerState,
      other,
    );
  }

  @override
  int get hashCode {
    return CompetitionWinnerPickerStateMapper.ensureInitialized().hashValue(
      this as CompetitionWinnerPickerState,
    );
  }
}

extension CompetitionWinnerPickerStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompetitionWinnerPickerState, $Out> {
  CompetitionWinnerPickerStateCopyWith<$R, CompetitionWinnerPickerState, $Out>
  get $asCompetitionWinnerPickerState => $base.as(
    (v, t, t2) => _CompetitionWinnerPickerStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CompetitionWinnerPickerStateCopyWith<
  $R,
  $In extends CompetitionWinnerPickerState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  TeamCopyWith<$R, Team, Team>? get winnerPrediction;
  ListCopyWith<$R, Team, TeamCopyWith<$R, Team, Team>> get teams;
  $R call({
    Team? winnerPrediction,
    List<Team>? teams,
    bool? loading,
    bool? saving,
  });
  CompetitionWinnerPickerStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CompetitionWinnerPickerStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompetitionWinnerPickerState, $Out>
    implements
        CompetitionWinnerPickerStateCopyWith<
          $R,
          CompetitionWinnerPickerState,
          $Out
        > {
  _CompetitionWinnerPickerStateCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<CompetitionWinnerPickerState> $mapper =
      CompetitionWinnerPickerStateMapper.ensureInitialized();
  @override
  TeamCopyWith<$R, Team, Team>? get winnerPrediction => $value
      .winnerPrediction
      ?.copyWith
      .$chain((v) => call(winnerPrediction: v));
  @override
  ListCopyWith<$R, Team, TeamCopyWith<$R, Team, Team>> get teams =>
      ListCopyWith(
        $value.teams,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(teams: v),
      );
  @override
  $R call({
    Object? winnerPrediction = $none,
    List<Team>? teams,
    bool? loading,
    bool? saving,
  }) => $apply(
    FieldCopyWithData({
      if (winnerPrediction != $none) #winnerPrediction: winnerPrediction,
      if (teams != null) #teams: teams,
      if (loading != null) #loading: loading,
      if (saving != null) #saving: saving,
    }),
  );
  @override
  CompetitionWinnerPickerState $make(CopyWithData data) =>
      CompetitionWinnerPickerState(
        winnerPrediction: data.get(
          #winnerPrediction,
          or: $value.winnerPrediction,
        ),
        teams: data.get(#teams, or: $value.teams),
        loading: data.get(#loading, or: $value.loading),
        saving: data.get(#saving, or: $value.saving),
      );

  @override
  CompetitionWinnerPickerStateCopyWith<$R2, CompetitionWinnerPickerState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CompetitionWinnerPickerStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

