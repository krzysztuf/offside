// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'match_dto.dart';

class MatchDtoMapper extends ClassMapperBase<MatchDto> {
  MatchDtoMapper._();

  static MatchDtoMapper? _instance;
  static MatchDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MatchDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MatchDto';

  static int _$id(MatchDto v) => v.id;
  static const Field<MatchDto, int> _f$id = Field('id', _$id);
  static int _$homeTeamId(MatchDto v) => v.homeTeamId;
  static const Field<MatchDto, int> _f$homeTeamId = Field(
    'homeTeamId',
    _$homeTeamId,
    key: r'home_team_id',
  );
  static int _$awayTeamId(MatchDto v) => v.awayTeamId;
  static const Field<MatchDto, int> _f$awayTeamId = Field(
    'awayTeamId',
    _$awayTeamId,
    key: r'away_team_id',
  );
  static int _$kickOffDate(MatchDto v) => v.kickOffDate;
  static const Field<MatchDto, int> _f$kickOffDate = Field(
    'kickOffDate',
    _$kickOffDate,
    key: r'kick_off_date',
  );
  static String _$stage(MatchDto v) => v.stage;
  static const Field<MatchDto, String> _f$stage = Field('stage', _$stage);
  static int _$knockoutStage(MatchDto v) => v.knockoutStage;
  static const Field<MatchDto, int> _f$knockoutStage = Field(
    'knockoutStage',
    _$knockoutStage,
    key: r'knockout_stage',
  );
  static int? _$homeResult(MatchDto v) => v.homeResult;
  static const Field<MatchDto, int> _f$homeResult = Field(
    'homeResult',
    _$homeResult,
    key: r'home_result',
    opt: true,
  );
  static int? _$awayResult(MatchDto v) => v.awayResult;
  static const Field<MatchDto, int> _f$awayResult = Field(
    'awayResult',
    _$awayResult,
    key: r'away_result',
    opt: true,
  );
  static int? _$penaltiesWinnerId(MatchDto v) => v.penaltiesWinnerId;
  static const Field<MatchDto, int> _f$penaltiesWinnerId = Field(
    'penaltiesWinnerId',
    _$penaltiesWinnerId,
    key: r'penalties_winner_id',
    opt: true,
  );

  @override
  final MappableFields<MatchDto> fields = const {
    #id: _f$id,
    #homeTeamId: _f$homeTeamId,
    #awayTeamId: _f$awayTeamId,
    #kickOffDate: _f$kickOffDate,
    #stage: _f$stage,
    #knockoutStage: _f$knockoutStage,
    #homeResult: _f$homeResult,
    #awayResult: _f$awayResult,
    #penaltiesWinnerId: _f$penaltiesWinnerId,
  };

  static MatchDto _instantiate(DecodingData data) {
    return MatchDto(
      id: data.dec(_f$id),
      homeTeamId: data.dec(_f$homeTeamId),
      awayTeamId: data.dec(_f$awayTeamId),
      kickOffDate: data.dec(_f$kickOffDate),
      stage: data.dec(_f$stage),
      knockoutStage: data.dec(_f$knockoutStage),
      homeResult: data.dec(_f$homeResult),
      awayResult: data.dec(_f$awayResult),
      penaltiesWinnerId: data.dec(_f$penaltiesWinnerId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MatchDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MatchDto>(map);
  }

  static MatchDto fromJson(String json) {
    return ensureInitialized().decodeJson<MatchDto>(json);
  }
}

mixin MatchDtoMappable {
  String toJson() {
    return MatchDtoMapper.ensureInitialized().encodeJson<MatchDto>(
      this as MatchDto,
    );
  }

  Map<String, dynamic> toMap() {
    return MatchDtoMapper.ensureInitialized().encodeMap<MatchDto>(
      this as MatchDto,
    );
  }

  MatchDtoCopyWith<MatchDto, MatchDto, MatchDto> get copyWith =>
      _MatchDtoCopyWithImpl<MatchDto, MatchDto>(
        this as MatchDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MatchDtoMapper.ensureInitialized().stringifyValue(this as MatchDto);
  }

  @override
  bool operator ==(Object other) {
    return MatchDtoMapper.ensureInitialized().equalsValue(
      this as MatchDto,
      other,
    );
  }

  @override
  int get hashCode {
    return MatchDtoMapper.ensureInitialized().hashValue(this as MatchDto);
  }
}

extension MatchDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, MatchDto, $Out> {
  MatchDtoCopyWith<$R, MatchDto, $Out> get $asMatchDto =>
      $base.as((v, t, t2) => _MatchDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MatchDtoCopyWith<$R, $In extends MatchDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    int? homeTeamId,
    int? awayTeamId,
    int? kickOffDate,
    String? stage,
    int? knockoutStage,
    int? homeResult,
    int? awayResult,
    int? penaltiesWinnerId,
  });
  MatchDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MatchDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MatchDto, $Out>
    implements MatchDtoCopyWith<$R, MatchDto, $Out> {
  _MatchDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MatchDto> $mapper =
      MatchDtoMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    int? homeTeamId,
    int? awayTeamId,
    int? kickOffDate,
    String? stage,
    int? knockoutStage,
    Object? homeResult = $none,
    Object? awayResult = $none,
    Object? penaltiesWinnerId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (homeTeamId != null) #homeTeamId: homeTeamId,
      if (awayTeamId != null) #awayTeamId: awayTeamId,
      if (kickOffDate != null) #kickOffDate: kickOffDate,
      if (stage != null) #stage: stage,
      if (knockoutStage != null) #knockoutStage: knockoutStage,
      if (homeResult != $none) #homeResult: homeResult,
      if (awayResult != $none) #awayResult: awayResult,
      if (penaltiesWinnerId != $none) #penaltiesWinnerId: penaltiesWinnerId,
    }),
  );
  @override
  MatchDto $make(CopyWithData data) => MatchDto(
    id: data.get(#id, or: $value.id),
    homeTeamId: data.get(#homeTeamId, or: $value.homeTeamId),
    awayTeamId: data.get(#awayTeamId, or: $value.awayTeamId),
    kickOffDate: data.get(#kickOffDate, or: $value.kickOffDate),
    stage: data.get(#stage, or: $value.stage),
    knockoutStage: data.get(#knockoutStage, or: $value.knockoutStage),
    homeResult: data.get(#homeResult, or: $value.homeResult),
    awayResult: data.get(#awayResult, or: $value.awayResult),
    penaltiesWinnerId: data.get(
      #penaltiesWinnerId,
      or: $value.penaltiesWinnerId,
    ),
  );

  @override
  MatchDtoCopyWith<$R2, MatchDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MatchDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

