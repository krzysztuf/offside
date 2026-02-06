// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match_outcome.dart';

class MatchOutcomeMapper extends ClassMapperBase<MatchOutcome> {
  MatchOutcomeMapper._();

  static MatchOutcomeMapper? _instance;
  static MatchOutcomeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchOutcomeMapper._());
      GoalsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MatchOutcome';

  static Goals _$goals(MatchOutcome v) => v.goals;
  static const Field<MatchOutcome, Goals> _f$goals = Field(
    'goals',
    _$goals,
    opt: true,
    def: const Goals(),
  );
  static int? _$penaltiesWinnerId(MatchOutcome v) => v.penaltiesWinnerId;
  static const Field<MatchOutcome, int> _f$penaltiesWinnerId = Field(
    'penaltiesWinnerId',
    _$penaltiesWinnerId,
    opt: true,
  );

  @override
  final MappableFields<MatchOutcome> fields = const {
    #goals: _f$goals,
    #penaltiesWinnerId: _f$penaltiesWinnerId,
  };

  static MatchOutcome _instantiate(DecodingData data) {
    return MatchOutcome(
      goals: data.dec(_f$goals),
      penaltiesWinnerId: data.dec(_f$penaltiesWinnerId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MatchOutcome fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MatchOutcome>(map);
  }

  static MatchOutcome fromJson(String json) {
    return ensureInitialized().decodeJson<MatchOutcome>(json);
  }
}

mixin MatchOutcomeMappable {
  String toJson() {
    return MatchOutcomeMapper.ensureInitialized().encodeJson<MatchOutcome>(
      this as MatchOutcome,
    );
  }

  Map<String, dynamic> toMap() {
    return MatchOutcomeMapper.ensureInitialized().encodeMap<MatchOutcome>(
      this as MatchOutcome,
    );
  }

  MatchOutcomeCopyWith<MatchOutcome, MatchOutcome, MatchOutcome> get copyWith =>
      _MatchOutcomeCopyWithImpl<MatchOutcome, MatchOutcome>(
        this as MatchOutcome,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MatchOutcomeMapper.ensureInitialized().stringifyValue(
      this as MatchOutcome,
    );
  }

  @override
  bool operator ==(Object other) {
    return MatchOutcomeMapper.ensureInitialized().equalsValue(
      this as MatchOutcome,
      other,
    );
  }

  @override
  int get hashCode {
    return MatchOutcomeMapper.ensureInitialized().hashValue(
      this as MatchOutcome,
    );
  }
}

extension MatchOutcomeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MatchOutcome, $Out> {
  MatchOutcomeCopyWith<$R, MatchOutcome, $Out> get $asMatchOutcome =>
      $base.as((v, t, t2) => _MatchOutcomeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchOutcomeCopyWith<$R, $In extends MatchOutcome, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  GoalsCopyWith<$R, Goals, Goals> get goals;
  $R call({Goals? goals, int? penaltiesWinnerId});
  MatchOutcomeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MatchOutcomeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MatchOutcome, $Out>
    implements MatchOutcomeCopyWith<$R, MatchOutcome, $Out> {
  _MatchOutcomeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MatchOutcome> $mapper =
      MatchOutcomeMapper.ensureInitialized();
  @override
  GoalsCopyWith<$R, Goals, Goals> get goals =>
      $value.goals.copyWith.$chain((v) => call(goals: v));
  @override
  $R call({Goals? goals, Object? penaltiesWinnerId = $none}) => $apply(
    FieldCopyWithData({
      if (goals != null) #goals: goals,
      if (penaltiesWinnerId != $none) #penaltiesWinnerId: penaltiesWinnerId,
    }),
  );
  @override
  MatchOutcome $make(CopyWithData data) => MatchOutcome(
    goals: data.get(#goals, or: $value.goals),
    penaltiesWinnerId: data.get(
      #penaltiesWinnerId,
      or: $value.penaltiesWinnerId,
    ),
  );

  @override
  MatchOutcomeCopyWith<$R2, MatchOutcome, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MatchOutcomeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

