// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bet.dart';

class BetMapper extends ClassMapperBase<Bet> {
  BetMapper._();

  static BetMapper? _instance;
  static BetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BetMapper._());
      MatchOutcomeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Bet';

  static int _$matchId(Bet v) => v.matchId;
  static const Field<Bet, int> _f$matchId = Field('matchId', _$matchId);
  static int _$userId(Bet v) => v.userId;
  static const Field<Bet, int> _f$userId = Field('userId', _$userId);
  static MatchOutcome _$prediction(Bet v) => v.prediction;
  static const Field<Bet, MatchOutcome> _f$prediction = Field(
    'prediction',
    _$prediction,
  );

  @override
  final MappableFields<Bet> fields = const {
    #matchId: _f$matchId,
    #userId: _f$userId,
    #prediction: _f$prediction,
  };

  static Bet _instantiate(DecodingData data) {
    return Bet(
      matchId: data.dec(_f$matchId),
      userId: data.dec(_f$userId),
      prediction: data.dec(_f$prediction),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Bet fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Bet>(map);
  }

  static Bet fromJson(String json) {
    return ensureInitialized().decodeJson<Bet>(json);
  }
}

mixin BetMappable {
  String toJson() {
    return BetMapper.ensureInitialized().encodeJson<Bet>(this as Bet);
  }

  Map<String, dynamic> toMap() {
    return BetMapper.ensureInitialized().encodeMap<Bet>(this as Bet);
  }

  BetCopyWith<Bet, Bet, Bet> get copyWith =>
      _BetCopyWithImpl<Bet, Bet>(this as Bet, $identity, $identity);
  @override
  String toString() {
    return BetMapper.ensureInitialized().stringifyValue(this as Bet);
  }

  @override
  bool operator ==(Object other) {
    return BetMapper.ensureInitialized().equalsValue(this as Bet, other);
  }

  @override
  int get hashCode {
    return BetMapper.ensureInitialized().hashValue(this as Bet);
  }
}

extension BetValueCopy<$R, $Out> on ObjectCopyWith<$R, Bet, $Out> {
  BetCopyWith<$R, Bet, $Out> get $asBet =>
      $base.as((v, t, t2) => _BetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BetCopyWith<$R, $In extends Bet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome> get prediction;
  $R call({int? matchId, int? userId, MatchOutcome? prediction});
  BetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BetCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Bet, $Out>
    implements BetCopyWith<$R, Bet, $Out> {
  _BetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Bet> $mapper = BetMapper.ensureInitialized();
  @override
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome> get prediction =>
      $value.prediction.copyWith.$chain((v) => call(prediction: v));
  @override
  $R call({int? matchId, int? userId, MatchOutcome? prediction}) => $apply(
    FieldCopyWithData({
      if (matchId != null) #matchId: matchId,
      if (userId != null) #userId: userId,
      if (prediction != null) #prediction: prediction,
    }),
  );
  @override
  Bet $make(CopyWithData data) => Bet(
    matchId: data.get(#matchId, or: $value.matchId),
    userId: data.get(#userId, or: $value.userId),
    prediction: data.get(#prediction, or: $value.prediction),
  );

  @override
  BetCopyWith<$R2, Bet, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

