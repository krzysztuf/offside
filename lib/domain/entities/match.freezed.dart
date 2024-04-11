// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  Fetchable<Team> get homeTeam => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  Fetchable<Team> get awayTeam => throw _privateConstructorUsedError;
  DateTime get kickOffDate => throw _privateConstructorUsedError;
  String get stage => throw _privateConstructorUsedError;
  bool get knockoutStage => throw _privateConstructorUsedError;
  MatchOutcome? get outcome => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  Fetchable<List<Bet>> get bets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false) Fetchable<Team> homeTeam,
      @JsonKey(includeFromJson: false) Fetchable<Team> awayTeam,
      DateTime kickOffDate,
      String stage,
      bool knockoutStage,
      MatchOutcome? outcome,
      @JsonKey(includeFromJson: false) Fetchable<List<Bet>> bets});

  $MatchOutcomeCopyWith<$Res>? get outcome;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? kickOffDate = null,
    Object? stage = null,
    Object? knockoutStage = null,
    Object? outcome = freezed,
    Object? bets = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Fetchable<Team>,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Fetchable<Team>,
      kickOffDate: null == kickOffDate
          ? _value.kickOffDate
          : kickOffDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      knockoutStage: null == knockoutStage
          ? _value.knockoutStage
          : knockoutStage // ignore: cast_nullable_to_non_nullable
              as bool,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as MatchOutcome?,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as Fetchable<List<Bet>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchOutcomeCopyWith<$Res>? get outcome {
    if (_value.outcome == null) {
      return null;
    }

    return $MatchOutcomeCopyWith<$Res>(_value.outcome!, (value) {
      return _then(_value.copyWith(outcome: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
          _$MatchImpl value, $Res Function(_$MatchImpl) then) =
      __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false) Fetchable<Team> homeTeam,
      @JsonKey(includeFromJson: false) Fetchable<Team> awayTeam,
      DateTime kickOffDate,
      String stage,
      bool knockoutStage,
      MatchOutcome? outcome,
      @JsonKey(includeFromJson: false) Fetchable<List<Bet>> bets});

  @override
  $MatchOutcomeCopyWith<$Res>? get outcome;
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
      _$MatchImpl _value, $Res Function(_$MatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? kickOffDate = null,
    Object? stage = null,
    Object? knockoutStage = null,
    Object? outcome = freezed,
    Object? bets = null,
  }) {
    return _then(_$MatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Fetchable<Team>,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Fetchable<Team>,
      kickOffDate: null == kickOffDate
          ? _value.kickOffDate
          : kickOffDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      knockoutStage: null == knockoutStage
          ? _value.knockoutStage
          : knockoutStage // ignore: cast_nullable_to_non_nullable
              as bool,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as MatchOutcome?,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as Fetchable<List<Bet>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl extends _Match {
  const _$MatchImpl(
      {this.id = '',
      @JsonKey(includeFromJson: false) this.homeTeam = const NoOpFetchable(),
      @JsonKey(includeFromJson: false) this.awayTeam = const NoOpFetchable(),
      required this.kickOffDate,
      required this.stage,
      required this.knockoutStage,
      this.outcome,
      @JsonKey(includeFromJson: false) this.bets = const NoOpFetchable()})
      : super._();

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(includeFromJson: false)
  final Fetchable<Team> homeTeam;
  @override
  @JsonKey(includeFromJson: false)
  final Fetchable<Team> awayTeam;
  @override
  final DateTime kickOffDate;
  @override
  final String stage;
  @override
  final bool knockoutStage;
  @override
  final MatchOutcome? outcome;
  @override
  @JsonKey(includeFromJson: false)
  final Fetchable<List<Bet>> bets;

  @override
  String toString() {
    return 'Match(id: $id, homeTeam: $homeTeam, awayTeam: $awayTeam, kickOffDate: $kickOffDate, stage: $stage, knockoutStage: $knockoutStage, outcome: $outcome, bets: $bets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.kickOffDate, kickOffDate) ||
                other.kickOffDate == kickOffDate) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.knockoutStage, knockoutStage) ||
                other.knockoutStage == knockoutStage) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.bets, bets) || other.bets == bets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, homeTeam, awayTeam,
      kickOffDate, stage, knockoutStage, outcome, bets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(
      this,
    );
  }
}

abstract class _Match extends Match {
  const factory _Match(
          {final String id,
          @JsonKey(includeFromJson: false) final Fetchable<Team> homeTeam,
          @JsonKey(includeFromJson: false) final Fetchable<Team> awayTeam,
          required final DateTime kickOffDate,
          required final String stage,
          required final bool knockoutStage,
          final MatchOutcome? outcome,
          @JsonKey(includeFromJson: false) final Fetchable<List<Bet>> bets}) =
      _$MatchImpl;
  const _Match._() : super._();

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeFromJson: false)
  Fetchable<Team> get homeTeam;
  @override
  @JsonKey(includeFromJson: false)
  Fetchable<Team> get awayTeam;
  @override
  DateTime get kickOffDate;
  @override
  String get stage;
  @override
  bool get knockoutStage;
  @override
  MatchOutcome? get outcome;
  @override
  @JsonKey(includeFromJson: false)
  Fetchable<List<Bet>> get bets;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
