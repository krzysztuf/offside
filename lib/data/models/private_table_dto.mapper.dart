// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'private_table_dto.dart';

class PrivateTableDtoMapper extends ClassMapperBase<PrivateTableDto> {
  PrivateTableDtoMapper._();

  static PrivateTableDtoMapper? _instance;
  static PrivateTableDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PrivateTableDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PrivateTableDto';

  static int _$id(PrivateTableDto v) => v.id;
  static const Field<PrivateTableDto, int> _f$id = Field('id', _$id);
  static String _$name(PrivateTableDto v) => v.name;
  static const Field<PrivateTableDto, String> _f$name = Field('name', _$name);
  static int _$ownerId(PrivateTableDto v) => v.ownerId;
  static const Field<PrivateTableDto, int> _f$ownerId = Field(
    'ownerId',
    _$ownerId,
    key: r'owner_id',
  );
  static List<int> _$memberIds(PrivateTableDto v) => v.memberIds;
  static const Field<PrivateTableDto, List<int>> _f$memberIds = Field(
    'memberIds',
    _$memberIds,
    key: r'member_ids',
  );

  @override
  final MappableFields<PrivateTableDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #ownerId: _f$ownerId,
    #memberIds: _f$memberIds,
  };

  static PrivateTableDto _instantiate(DecodingData data) {
    return PrivateTableDto(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      ownerId: data.dec(_f$ownerId),
      memberIds: data.dec(_f$memberIds),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PrivateTableDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PrivateTableDto>(map);
  }

  static PrivateTableDto fromJson(String json) {
    return ensureInitialized().decodeJson<PrivateTableDto>(json);
  }
}

mixin PrivateTableDtoMappable {
  String toJson() {
    return PrivateTableDtoMapper.ensureInitialized()
        .encodeJson<PrivateTableDto>(this as PrivateTableDto);
  }

  Map<String, dynamic> toMap() {
    return PrivateTableDtoMapper.ensureInitialized().encodeMap<PrivateTableDto>(
      this as PrivateTableDto,
    );
  }

  PrivateTableDtoCopyWith<PrivateTableDto, PrivateTableDto, PrivateTableDto>
  get copyWith =>
      _PrivateTableDtoCopyWithImpl<PrivateTableDto, PrivateTableDto>(
        this as PrivateTableDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PrivateTableDtoMapper.ensureInitialized().stringifyValue(
      this as PrivateTableDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return PrivateTableDtoMapper.ensureInitialized().equalsValue(
      this as PrivateTableDto,
      other,
    );
  }

  @override
  int get hashCode {
    return PrivateTableDtoMapper.ensureInitialized().hashValue(
      this as PrivateTableDto,
    );
  }
}

extension PrivateTableDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PrivateTableDto, $Out> {
  PrivateTableDtoCopyWith<$R, PrivateTableDto, $Out> get $asPrivateTableDto =>
      $base.as((v, t, t2) => _PrivateTableDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PrivateTableDtoCopyWith<$R, $In extends PrivateTableDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get memberIds;
  $R call({int? id, String? name, int? ownerId, List<int>? memberIds});
  PrivateTableDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PrivateTableDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PrivateTableDto, $Out>
    implements PrivateTableDtoCopyWith<$R, PrivateTableDto, $Out> {
  _PrivateTableDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PrivateTableDto> $mapper =
      PrivateTableDtoMapper.ensureInitialized();
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
  PrivateTableDto $make(CopyWithData data) => PrivateTableDto(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    ownerId: data.get(#ownerId, or: $value.ownerId),
    memberIds: data.get(#memberIds, or: $value.memberIds),
  );

  @override
  PrivateTableDtoCopyWith<$R2, PrivateTableDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PrivateTableDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

