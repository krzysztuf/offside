// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'main_sub_page_state.dart';

class MainSubPageStateMapper extends ClassMapperBase<MainSubPageState> {
  MainSubPageStateMapper._();

  static MainSubPageStateMapper? _instance;
  static MainSubPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MainSubPageStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MainSubPageState';

  static List<UserScoreSummary> _$userScores(MainSubPageState v) =>
      v.userScores;
  static const Field<MainSubPageState, List<UserScoreSummary>> _f$userScores =
      Field('userScores', _$userScores);

  @override
  final MappableFields<MainSubPageState> fields = const {
    #userScores: _f$userScores,
  };

  static MainSubPageState _instantiate(DecodingData data) {
    return MainSubPageState(userScores: data.dec(_f$userScores));
  }

  @override
  final Function instantiate = _instantiate;

  static MainSubPageState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MainSubPageState>(map);
  }

  static MainSubPageState fromJson(String json) {
    return ensureInitialized().decodeJson<MainSubPageState>(json);
  }
}

mixin MainSubPageStateMappable {
  String toJson() {
    return MainSubPageStateMapper.ensureInitialized()
        .encodeJson<MainSubPageState>(this as MainSubPageState);
  }

  Map<String, dynamic> toMap() {
    return MainSubPageStateMapper.ensureInitialized()
        .encodeMap<MainSubPageState>(this as MainSubPageState);
  }

  MainSubPageStateCopyWith<MainSubPageState, MainSubPageState, MainSubPageState>
  get copyWith =>
      _MainSubPageStateCopyWithImpl<MainSubPageState, MainSubPageState>(
        this as MainSubPageState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MainSubPageStateMapper.ensureInitialized().stringifyValue(
      this as MainSubPageState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MainSubPageStateMapper.ensureInitialized().equalsValue(
      this as MainSubPageState,
      other,
    );
  }

  @override
  int get hashCode {
    return MainSubPageStateMapper.ensureInitialized().hashValue(
      this as MainSubPageState,
    );
  }
}

extension MainSubPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MainSubPageState, $Out> {
  MainSubPageStateCopyWith<$R, MainSubPageState, $Out>
  get $asMainSubPageState =>
      $base.as((v, t, t2) => _MainSubPageStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MainSubPageStateCopyWith<$R, $In extends MainSubPageState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    UserScoreSummary,
    ObjectCopyWith<$R, UserScoreSummary, UserScoreSummary>
  >
  get userScores;
  $R call({List<UserScoreSummary>? userScores});
  MainSubPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MainSubPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MainSubPageState, $Out>
    implements MainSubPageStateCopyWith<$R, MainSubPageState, $Out> {
  _MainSubPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MainSubPageState> $mapper =
      MainSubPageStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    UserScoreSummary,
    ObjectCopyWith<$R, UserScoreSummary, UserScoreSummary>
  >
  get userScores => ListCopyWith(
    $value.userScores,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(userScores: v),
  );
  @override
  $R call({List<UserScoreSummary>? userScores}) => $apply(
    FieldCopyWithData({if (userScores != null) #userScores: userScores}),
  );
  @override
  MainSubPageState $make(CopyWithData data) => MainSubPageState(
    userScores: data.get(#userScores, or: $value.userScores),
  );

  @override
  MainSubPageStateCopyWith<$R2, MainSubPageState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MainSubPageStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

