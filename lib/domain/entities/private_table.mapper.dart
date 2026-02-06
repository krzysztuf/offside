// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'private_table.dart';

class PrivateTableMapper extends ClassMapperBase<PrivateTable> {
  PrivateTableMapper._();

  static PrivateTableMapper? _instance;
  static PrivateTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PrivateTableMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PrivateTable';

  static int _$id(PrivateTable v) => v.id;
  static const Field<PrivateTable, int> _f$id = Field(
    'id',
    _$id,
    opt: true,
    def: 0,
  );
  static String _$name(PrivateTable v) => v.name;
  static const Field<PrivateTable, String> _f$name = Field('name', _$name);
  static int _$ownerId(PrivateTable v) => v.ownerId;
  static const Field<PrivateTable, int> _f$ownerId = Field(
    'ownerId',
    _$ownerId,
  );
  static List<int> _$memberIds(PrivateTable v) => v.memberIds;
  static const Field<PrivateTable, List<int>> _f$memberIds = Field(
    'memberIds',
    _$memberIds,
  );

  @override
  final MappableFields<PrivateTable> fields = const {
    #id: _f$id,
    #name: _f$name,
    #ownerId: _f$ownerId,
    #memberIds: _f$memberIds,
  };

  static PrivateTable _instantiate(DecodingData data) {
    return PrivateTable(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      ownerId: data.dec(_f$ownerId),
      memberIds: data.dec(_f$memberIds),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PrivateTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PrivateTable>(map);
  }

  static PrivateTable fromJson(String json) {
    return ensureInitialized().decodeJson<PrivateTable>(json);
  }
}

mixin PrivateTableMappable {
  String toJson() {
    return PrivateTableMapper.ensureInitialized().encodeJson<PrivateTable>(
      this as PrivateTable,
    );
  }

  Map<String, dynamic> toMap() {
    return PrivateTableMapper.ensureInitialized().encodeMap<PrivateTable>(
      this as PrivateTable,
    );
  }

  PrivateTableCopyWith<PrivateTable, PrivateTable, PrivateTable> get copyWith =>
      _PrivateTableCopyWithImpl<PrivateTable, PrivateTable>(
        this as PrivateTable,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PrivateTableMapper.ensureInitialized().stringifyValue(
      this as PrivateTable,
    );
  }

  @override
  bool operator ==(Object other) {
    return PrivateTableMapper.ensureInitialized().equalsValue(
      this as PrivateTable,
      other,
    );
  }

  @override
  int get hashCode {
    return PrivateTableMapper.ensureInitialized().hashValue(
      this as PrivateTable,
    );
  }
}

extension PrivateTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PrivateTable, $Out> {
  PrivateTableCopyWith<$R, PrivateTable, $Out> get $asPrivateTable =>
      $base.as((v, t, t2) => _PrivateTableCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PrivateTableCopyWith<$R, $In extends PrivateTable, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get memberIds;
  $R call({int? id, String? name, int? ownerId, List<int>? memberIds});
  PrivateTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PrivateTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PrivateTable, $Out>
    implements PrivateTableCopyWith<$R, PrivateTable, $Out> {
  _PrivateTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PrivateTable> $mapper =
      PrivateTableMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get memberIds =>
      ListCopyWith(
        $value.memberIds,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(memberIds: v),
      );
  @override
  $R call({int? id, String? name, int? ownerId, List<int>? memberIds}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (name != null) #name: name,
          if (ownerId != null) #ownerId: ownerId,
          if (memberIds != null) #memberIds: memberIds,
        }),
      );
  @override
  PrivateTable $make(CopyWithData data) => PrivateTable(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    ownerId: data.get(#ownerId, or: $value.ownerId),
    memberIds: data.get(#memberIds, or: $value.memberIds),
  );

  @override
  PrivateTableCopyWith<$R2, PrivateTable, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PrivateTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

