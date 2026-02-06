// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'goals.dart';

class GoalsMapper extends ClassMapperBase<Goals> {
  GoalsMapper._();

  static GoalsMapper? _instance;
  static GoalsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GoalsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Goals';

  static int _$home(Goals v) => v.home;
  static const Field<Goals, int> _f$home = Field(
    'home',
    _$home,
    opt: true,
    def: 0,
  );
  static int _$away(Goals v) => v.away;
  static const Field<Goals, int> _f$away = Field(
    'away',
    _$away,
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<Goals> fields = const {#home: _f$home, #away: _f$away};

  static Goals _instantiate(DecodingData data) {
    return Goals(home: data.dec(_f$home), away: data.dec(_f$away));
  }

  @override
  final Function instantiate = _instantiate;

  static Goals fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Goals>(map);
  }

  static Goals fromJson(String json) {
    return ensureInitialized().decodeJson<Goals>(json);
  }
}

mixin GoalsMappable {
  String toJson() {
    return GoalsMapper.ensureInitialized().encodeJson<Goals>(this as Goals);
  }

  Map<String, dynamic> toMap() {
    return GoalsMapper.ensureInitialized().encodeMap<Goals>(this as Goals);
  }

  GoalsCopyWith<Goals, Goals, Goals> get copyWith =>
      _GoalsCopyWithImpl<Goals, Goals>(this as Goals, $identity, $identity);
  @override
  String toString() {
    return GoalsMapper.ensureInitialized().stringifyValue(this as Goals);
  }

  @override
  bool operator ==(Object other) {
    return GoalsMapper.ensureInitialized().equalsValue(this as Goals, other);
  }

  @override
  int get hashCode {
    return GoalsMapper.ensureInitialized().hashValue(this as Goals);
  }
}

extension GoalsValueCopy<$R, $Out> on ObjectCopyWith<$R, Goals, $Out> {
  GoalsCopyWith<$R, Goals, $Out> get $asGoals =>
      $base.as((v, t, t2) => _GoalsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GoalsCopyWith<$R, $In extends Goals, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? home, int? away});
  GoalsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GoalsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Goals, $Out>
    implements GoalsCopyWith<$R, Goals, $Out> {
  _GoalsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Goals> $mapper = GoalsMapper.ensureInitialized();
  @override
  $R call({int? home, int? away}) => $apply(
    FieldCopyWithData({
      if (home != null) #home: home,
      if (away != null) #away: away,
    }),
  );
  @override
  Goals $make(CopyWithData data) => Goals(
    home: data.get(#home, or: $value.home),
    away: data.get(#away, or: $value.away),
  );

  @override
  GoalsCopyWith<$R2, Goals, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GoalsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

