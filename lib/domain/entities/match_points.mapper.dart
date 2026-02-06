// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match_points.dart';

class MatchPointsMapper extends ClassMapperBase<MatchPoints> {
  MatchPointsMapper._();

  static MatchPointsMapper? _instance;
  static MatchPointsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchPointsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MatchPoints';

  static int _$field(MatchPoints v) => v.field;
  static const Field<MatchPoints, int> _f$field = Field('field', _$field);

  @override
  final MappableFields<MatchPoints> fields = const {#field: _f$field};

  static MatchPoints _instantiate(DecodingData data) {
    return MatchPoints(field: data.dec(_f$field));
  }

  @override
  final Function instantiate = _instantiate;

  static MatchPoints fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MatchPoints>(map);
  }

  static MatchPoints fromJson(String json) {
    return ensureInitialized().decodeJson<MatchPoints>(json);
  }
}

mixin MatchPointsMappable {
  String toJson() {
    return MatchPointsMapper.ensureInitialized().encodeJson<MatchPoints>(
      this as MatchPoints,
    );
  }

  Map<String, dynamic> toMap() {
    return MatchPointsMapper.ensureInitialized().encodeMap<MatchPoints>(
      this as MatchPoints,
    );
  }

  MatchPointsCopyWith<MatchPoints, MatchPoints, MatchPoints> get copyWith =>
      _MatchPointsCopyWithImpl<MatchPoints, MatchPoints>(
        this as MatchPoints,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MatchPointsMapper.ensureInitialized().stringifyValue(
      this as MatchPoints,
    );
  }

  @override
  bool operator ==(Object other) {
    return MatchPointsMapper.ensureInitialized().equalsValue(
      this as MatchPoints,
      other,
    );
  }

  @override
  int get hashCode {
    return MatchPointsMapper.ensureInitialized().hashValue(this as MatchPoints);
  }
}

extension MatchPointsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MatchPoints, $Out> {
  MatchPointsCopyWith<$R, MatchPoints, $Out> get $asMatchPoints =>
      $base.as((v, t, t2) => _MatchPointsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchPointsCopyWith<$R, $In extends MatchPoints, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? field});
  MatchPointsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MatchPointsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MatchPoints, $Out>
    implements MatchPointsCopyWith<$R, MatchPoints, $Out> {
  _MatchPointsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MatchPoints> $mapper =
      MatchPointsMapper.ensureInitialized();
  @override
  $R call({int? field}) =>
      $apply(FieldCopyWithData({if (field != null) #field: field}));
  @override
  MatchPoints $make(CopyWithData data) =>
      MatchPoints(field: data.get(#field, or: $value.field));

  @override
  MatchPointsCopyWith<$R2, MatchPoints, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MatchPointsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

