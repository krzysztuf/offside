// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'id_dto.dart';

class IdDtoMapper extends ClassMapperBase<IdDto> {
  IdDtoMapper._();

  static IdDtoMapper? _instance;
  static IdDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IdDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'IdDto';

  static int _$id(IdDto v) => v.id;
  static const Field<IdDto, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<IdDto> fields = const {#id: _f$id};

  static IdDto _instantiate(DecodingData data) {
    return IdDto(id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static IdDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<IdDto>(map);
  }

  static IdDto fromJson(String json) {
    return ensureInitialized().decodeJson<IdDto>(json);
  }
}

mixin IdDtoMappable {
  String toJson() {
    return IdDtoMapper.ensureInitialized().encodeJson<IdDto>(this as IdDto);
  }

  Map<String, dynamic> toMap() {
    return IdDtoMapper.ensureInitialized().encodeMap<IdDto>(this as IdDto);
  }

  IdDtoCopyWith<IdDto, IdDto, IdDto> get copyWith =>
      _IdDtoCopyWithImpl<IdDto, IdDto>(this as IdDto, $identity, $identity);
  @override
  String toString() {
    return IdDtoMapper.ensureInitialized().stringifyValue(this as IdDto);
  }

  @override
  bool operator ==(Object other) {
    return IdDtoMapper.ensureInitialized().equalsValue(this as IdDto, other);
  }

  @override
  int get hashCode {
    return IdDtoMapper.ensureInitialized().hashValue(this as IdDto);
  }
}

extension IdDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, IdDto, $Out> {
  IdDtoCopyWith<$R, IdDto, $Out> get $asIdDto =>
      $base.as((v, t, t2) => _IdDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IdDtoCopyWith<$R, $In extends IdDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id});
  IdDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IdDtoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, IdDto, $Out>
    implements IdDtoCopyWith<$R, IdDto, $Out> {
  _IdDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<IdDto> $mapper = IdDtoMapper.ensureInitialized();
  @override
  $R call({int? id}) => $apply(FieldCopyWithData({if (id != null) #id: id}));
  @override
  IdDto $make(CopyWithData data) => IdDto(id: data.get(#id, or: $value.id));

  @override
  IdDtoCopyWith<$R2, IdDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _IdDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

