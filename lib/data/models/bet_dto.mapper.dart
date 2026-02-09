// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bet_dto.dart';

class BetDtoMapper extends ClassMapperBase<BetDto> {
  BetDtoMapper._();

  static BetDtoMapper? _instance;
  static BetDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BetDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BetDto';

  static int _$matchId(BetDto v) => v.matchId;
  static const Field<BetDto, int> _f$matchId = Field(
    'matchId',
    _$matchId,
    key: r'match_id',
  );
  static int _$userId(BetDto v) => v.userId;
  static const Field<BetDto, int> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static int _$homeGoalsPrediction(BetDto v) => v.homeGoalsPrediction;
  static const Field<BetDto, int> _f$homeGoalsPrediction = Field(
    'homeGoalsPrediction',
    _$homeGoalsPrediction,
    key: r'home_goals_prediction',
  );
  static int _$awayGoalsPrediction(BetDto v) => v.awayGoalsPrediction;
  static const Field<BetDto, int> _f$awayGoalsPrediction = Field(
    'awayGoalsPrediction',
    _$awayGoalsPrediction,
    key: r'away_goals_prediction',
  );
  static int? _$penaltiesWinnerId(BetDto v) => v.penaltiesWinnerId;
  static const Field<BetDto, int> _f$penaltiesWinnerId = Field(
    'penaltiesWinnerId',
    _$penaltiesWinnerId,
    key: r'penalties_winner_id',
    opt: true,
  );

  @override
  final MappableFields<BetDto> fields = const {
    #matchId: _f$matchId,
    #userId: _f$userId,
    #homeGoalsPrediction: _f$homeGoalsPrediction,
    #awayGoalsPrediction: _f$awayGoalsPrediction,
    #penaltiesWinnerId: _f$penaltiesWinnerId,
  };

  static BetDto _instantiate(DecodingData data) {
    return BetDto(
      matchId: data.dec(_f$matchId),
      userId: data.dec(_f$userId),
      homeGoalsPrediction: data.dec(_f$homeGoalsPrediction),
      awayGoalsPrediction: data.dec(_f$awayGoalsPrediction),
      penaltiesWinnerId: data.dec(_f$penaltiesWinnerId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BetDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BetDto>(map);
  }

  static BetDto fromJson(String json) {
    return ensureInitialized().decodeJson<BetDto>(json);
  }
}

mixin BetDtoMappable {
  String toJson() {
    return BetDtoMapper.ensureInitialized().encodeJson<BetDto>(this as BetDto);
  }

  Map<String, dynamic> toMap() {
    return BetDtoMapper.ensureInitialized().encodeMap<BetDto>(this as BetDto);
  }

  BetDtoCopyWith<BetDto, BetDto, BetDto> get copyWith =>
      _BetDtoCopyWithImpl<BetDto, BetDto>(this as BetDto, $identity, $identity);
  @override
  String toString() {
    return BetDtoMapper.ensureInitialized().stringifyValue(this as BetDto);
  }

  @override
  bool operator ==(Object other) {
    return BetDtoMapper.ensureInitialized().equalsValue(this as BetDto, other);
  }

  @override
  int get hashCode {
    return BetDtoMapper.ensureInitialized().hashValue(this as BetDto);
  }
}

extension BetDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, BetDto, $Out> {
  BetDtoCopyWith<$R, BetDto, $Out> get $asBetDto =>
      $base.as((v, t, t2) => _BetDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BetDtoCopyWith<$R, $In extends BetDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? matchId,
    int? userId,
    int? homeGoalsPrediction,
    int? awayGoalsPrediction,
    int? penaltiesWinnerId,
  });
  BetDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BetDtoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, BetDto, $Out>
    implements BetDtoCopyWith<$R, BetDto, $Out> {
  _BetDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BetDto> $mapper = BetDtoMapper.ensureInitialized();
  @override
  $R call({
    int? matchId,
    int? userId,
    int? homeGoalsPrediction,
    int? awayGoalsPrediction,
    Object? penaltiesWinnerId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (matchId != null) #matchId: matchId,
      if (userId != null) #userId: userId,
      if (homeGoalsPrediction != null)
        #homeGoalsPrediction: homeGoalsPrediction,
      if (awayGoalsPrediction != null)
        #awayGoalsPrediction: awayGoalsPrediction,
      if (penaltiesWinnerId != $none) #penaltiesWinnerId: penaltiesWinnerId,
    }),
  );
  @override
  BetDto $make(CopyWithData data) => BetDto(
    matchId: data.get(#matchId, or: $value.matchId),
    userId: data.get(#userId, or: $value.userId),
    homeGoalsPrediction: data.get(
      #homeGoalsPrediction,
      or: $value.homeGoalsPrediction,
    ),
    awayGoalsPrediction: data.get(
      #awayGoalsPrediction,
      or: $value.awayGoalsPrediction,
    ),
    penaltiesWinnerId: data.get(
      #penaltiesWinnerId,
      or: $value.penaltiesWinnerId,
    ),
  );

  @override
  BetDtoCopyWith<$R2, BetDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BetDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

