// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'team_dto.dart';

class TeamDtoMapper extends ClassMapperBase<TeamDto> {
  TeamDtoMapper._();

  static TeamDtoMapper? _instance;
  static TeamDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TeamDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TeamDto';

  static int _$id(TeamDto v) => v.id;
  static const Field<TeamDto, int> _f$id = Field('id', _$id);
  static String _$name(TeamDto v) => v.name;
  static const Field<TeamDto, String> _f$name = Field('name', _$name);
  static String _$abbreviation(TeamDto v) => v.abbreviation;
  static const Field<TeamDto, String> _f$abbreviation = Field(
    'abbreviation',
    _$abbreviation,
  );

  @override
  final MappableFields<TeamDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #abbreviation: _f$abbreviation,
  };

  static TeamDto _instantiate(DecodingData data) {
    return TeamDto(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      abbreviation: data.dec(_f$abbreviation),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TeamDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TeamDto>(map);
  }

  static TeamDto fromJson(String json) {
    return ensureInitialized().decodeJson<TeamDto>(json);
  }
}

mixin TeamDtoMappable {
  String toJson() {
    return TeamDtoMapper.ensureInitialized().encodeJson<TeamDto>(
      this as TeamDto,
    );
  }

  Map<String, dynamic> toMap() {
    return TeamDtoMapper.ensureInitialized().encodeMap<TeamDto>(
      this as TeamDto,
    );
  }

  TeamDtoCopyWith<TeamDto, TeamDto, TeamDto> get copyWith =>
      _TeamDtoCopyWithImpl<TeamDto, TeamDto>(
        this as TeamDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TeamDtoMapper.ensureInitialized().stringifyValue(this as TeamDto);
  }

  @override
  bool operator ==(Object other) {
    return TeamDtoMapper.ensureInitialized().equalsValue(
      this as TeamDto,
      other,
    );
  }

  @override
  int get hashCode {
    return TeamDtoMapper.ensureInitialized().hashValue(this as TeamDto);
  }
}

extension TeamDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, TeamDto, $Out> {
  TeamDtoCopyWith<$R, TeamDto, $Out> get $asTeamDto =>
      $base.as((v, t, t2) => _TeamDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TeamDtoCopyWith<$R, $In extends TeamDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, String? abbreviation});
  TeamDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TeamDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TeamDto, $Out>
    implements TeamDtoCopyWith<$R, TeamDto, $Out> {
  _TeamDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TeamDto> $mapper =
      TeamDtoMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, String? abbreviation}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (abbreviation != null) #abbreviation: abbreviation,
    }),
  );
  @override
  TeamDto $make(CopyWithData data) => TeamDto(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    abbreviation: data.get(#abbreviation, or: $value.abbreviation),
  );

  @override
  TeamDtoCopyWith<$R2, TeamDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TeamDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

