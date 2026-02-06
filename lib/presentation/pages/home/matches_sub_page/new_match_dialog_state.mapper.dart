// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'new_match_dialog_state.dart';

class NewMatchDialogStateMapper extends ClassMapperBase<NewMatchDialogState> {
  NewMatchDialogStateMapper._();

  static NewMatchDialogStateMapper? _instance;
  static NewMatchDialogStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewMatchDialogStateMapper._());
      TeamMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewMatchDialogState';

  static List<Team> _$teams(NewMatchDialogState v) => v.teams;
  static const Field<NewMatchDialogState, List<Team>> _f$teams = Field(
    'teams',
    _$teams,
  );
  static bool _$loading(NewMatchDialogState v) => v.loading;
  static const Field<NewMatchDialogState, bool> _f$loading = Field(
    'loading',
    _$loading,
  );

  @override
  final MappableFields<NewMatchDialogState> fields = const {
    #teams: _f$teams,
    #loading: _f$loading,
  };

  static NewMatchDialogState _instantiate(DecodingData data) {
    return NewMatchDialogState(
      teams: data.dec(_f$teams),
      loading: data.dec(_f$loading),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NewMatchDialogState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NewMatchDialogState>(map);
  }

  static NewMatchDialogState fromJson(String json) {
    return ensureInitialized().decodeJson<NewMatchDialogState>(json);
  }
}

mixin NewMatchDialogStateMappable {
  String toJson() {
    return NewMatchDialogStateMapper.ensureInitialized()
        .encodeJson<NewMatchDialogState>(this as NewMatchDialogState);
  }

  Map<String, dynamic> toMap() {
    return NewMatchDialogStateMapper.ensureInitialized()
        .encodeMap<NewMatchDialogState>(this as NewMatchDialogState);
  }

  NewMatchDialogStateCopyWith<
    NewMatchDialogState,
    NewMatchDialogState,
    NewMatchDialogState
  >
  get copyWith =>
      _NewMatchDialogStateCopyWithImpl<
        NewMatchDialogState,
        NewMatchDialogState
      >(this as NewMatchDialogState, $identity, $identity);
  @override
  String toString() {
    return NewMatchDialogStateMapper.ensureInitialized().stringifyValue(
      this as NewMatchDialogState,
    );
  }

  @override
  bool operator ==(Object other) {
    return NewMatchDialogStateMapper.ensureInitialized().equalsValue(
      this as NewMatchDialogState,
      other,
    );
  }

  @override
  int get hashCode {
    return NewMatchDialogStateMapper.ensureInitialized().hashValue(
      this as NewMatchDialogState,
    );
  }
}

extension NewMatchDialogStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NewMatchDialogState, $Out> {
  NewMatchDialogStateCopyWith<$R, NewMatchDialogState, $Out>
  get $asNewMatchDialogState => $base.as(
    (v, t, t2) => _NewMatchDialogStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class NewMatchDialogStateCopyWith<
  $R,
  $In extends NewMatchDialogState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Team, TeamCopyWith<$R, Team, Team>> get teams;
  $R call({List<Team>? teams, bool? loading});
  NewMatchDialogStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NewMatchDialogStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewMatchDialogState, $Out>
    implements NewMatchDialogStateCopyWith<$R, NewMatchDialogState, $Out> {
  _NewMatchDialogStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewMatchDialogState> $mapper =
      NewMatchDialogStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Team, TeamCopyWith<$R, Team, Team>> get teams =>
      ListCopyWith(
        $value.teams,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(teams: v),
      );
  @override
  $R call({List<Team>? teams, bool? loading}) => $apply(
    FieldCopyWithData({
      if (teams != null) #teams: teams,
      if (loading != null) #loading: loading,
    }),
  );
  @override
  NewMatchDialogState $make(CopyWithData data) => NewMatchDialogState(
    teams: data.get(#teams, or: $value.teams),
    loading: data.get(#loading, or: $value.loading),
  );

  @override
  NewMatchDialogStateCopyWith<$R2, NewMatchDialogState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NewMatchDialogStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

