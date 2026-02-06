// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'private_tables_state.dart';

class PrivateTablesStateMapper extends ClassMapperBase<PrivateTablesState> {
  PrivateTablesStateMapper._();

  static PrivateTablesStateMapper? _instance;
  static PrivateTablesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PrivateTablesStateMapper._());
      PrivateTableMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PrivateTablesState';

  static List<PrivateTable> _$tables(PrivateTablesState v) => v.tables;
  static const Field<PrivateTablesState, List<PrivateTable>> _f$tables = Field(
    'tables',
    _$tables,
  );

  @override
  final MappableFields<PrivateTablesState> fields = const {#tables: _f$tables};

  static PrivateTablesState _instantiate(DecodingData data) {
    return PrivateTablesState(tables: data.dec(_f$tables));
  }

  @override
  final Function instantiate = _instantiate;

  static PrivateTablesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PrivateTablesState>(map);
  }

  static PrivateTablesState fromJson(String json) {
    return ensureInitialized().decodeJson<PrivateTablesState>(json);
  }
}

mixin PrivateTablesStateMappable {
  String toJson() {
    return PrivateTablesStateMapper.ensureInitialized()
        .encodeJson<PrivateTablesState>(this as PrivateTablesState);
  }

  Map<String, dynamic> toMap() {
    return PrivateTablesStateMapper.ensureInitialized()
        .encodeMap<PrivateTablesState>(this as PrivateTablesState);
  }

  PrivateTablesStateCopyWith<
    PrivateTablesState,
    PrivateTablesState,
    PrivateTablesState
  >
  get copyWith =>
      _PrivateTablesStateCopyWithImpl<PrivateTablesState, PrivateTablesState>(
        this as PrivateTablesState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PrivateTablesStateMapper.ensureInitialized().stringifyValue(
      this as PrivateTablesState,
    );
  }

  @override
  bool operator ==(Object other) {
    return PrivateTablesStateMapper.ensureInitialized().equalsValue(
      this as PrivateTablesState,
      other,
    );
  }

  @override
  int get hashCode {
    return PrivateTablesStateMapper.ensureInitialized().hashValue(
      this as PrivateTablesState,
    );
  }
}

extension PrivateTablesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PrivateTablesState, $Out> {
  PrivateTablesStateCopyWith<$R, PrivateTablesState, $Out>
  get $asPrivateTablesState => $base.as(
    (v, t, t2) => _PrivateTablesStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PrivateTablesStateCopyWith<
  $R,
  $In extends PrivateTablesState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PrivateTable,
    PrivateTableCopyWith<$R, PrivateTable, PrivateTable>
  >
  get tables;
  $R call({List<PrivateTable>? tables});
  PrivateTablesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PrivateTablesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PrivateTablesState, $Out>
    implements PrivateTablesStateCopyWith<$R, PrivateTablesState, $Out> {
  _PrivateTablesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PrivateTablesState> $mapper =
      PrivateTablesStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PrivateTable,
    PrivateTableCopyWith<$R, PrivateTable, PrivateTable>
  >
  get tables => ListCopyWith(
    $value.tables,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tables: v),
  );
  @override
  $R call({List<PrivateTable>? tables}) =>
      $apply(FieldCopyWithData({if (tables != null) #tables: tables}));
  @override
  PrivateTablesState $make(CopyWithData data) =>
      PrivateTablesState(tables: data.get(#tables, or: $value.tables));

  @override
  PrivateTablesStateCopyWith<$R2, PrivateTablesState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PrivateTablesStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

