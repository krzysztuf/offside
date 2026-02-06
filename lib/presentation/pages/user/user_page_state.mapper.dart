// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_page_state.dart';

class UserPageStateMapper extends ClassMapperBase<UserPageState> {
  UserPageStateMapper._();

  static UserPageStateMapper? _instance;
  static UserPageStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserPageStateMapper._());
      UserMapper.ensureInitialized();
      BetMapper.ensureInitialized();
      MatchMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserPageState';

  static User _$user(UserPageState v) => v.user;
  static const Field<UserPageState, User> _f$user = Field('user', _$user);
  static List<Bet> _$bets(UserPageState v) => v.bets;
  static const Field<UserPageState, List<Bet>> _f$bets = Field('bets', _$bets);
  static List<Match> _$matches(UserPageState v) => v.matches;
  static const Field<UserPageState, List<Match>> _f$matches = Field(
    'matches',
    _$matches,
  );
  static int _$winnerId(UserPageState v) => v.winnerId;
  static const Field<UserPageState, int> _f$winnerId = Field(
    'winnerId',
    _$winnerId,
  );

  @override
  final MappableFields<UserPageState> fields = const {
    #user: _f$user,
    #bets: _f$bets,
    #matches: _f$matches,
    #winnerId: _f$winnerId,
  };

  static UserPageState _instantiate(DecodingData data) {
    return UserPageState(
      user: data.dec(_f$user),
      bets: data.dec(_f$bets),
      matches: data.dec(_f$matches),
      winnerId: data.dec(_f$winnerId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserPageState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserPageState>(map);
  }

  static UserPageState fromJson(String json) {
    return ensureInitialized().decodeJson<UserPageState>(json);
  }
}

mixin UserPageStateMappable {
  String toJson() {
    return UserPageStateMapper.ensureInitialized().encodeJson<UserPageState>(
      this as UserPageState,
    );
  }

  Map<String, dynamic> toMap() {
    return UserPageStateMapper.ensureInitialized().encodeMap<UserPageState>(
      this as UserPageState,
    );
  }

  UserPageStateCopyWith<UserPageState, UserPageState, UserPageState>
  get copyWith => _UserPageStateCopyWithImpl<UserPageState, UserPageState>(
    this as UserPageState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UserPageStateMapper.ensureInitialized().stringifyValue(
      this as UserPageState,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserPageStateMapper.ensureInitialized().equalsValue(
      this as UserPageState,
      other,
    );
  }

  @override
  int get hashCode {
    return UserPageStateMapper.ensureInitialized().hashValue(
      this as UserPageState,
    );
  }
}

extension UserPageStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserPageState, $Out> {
  UserPageStateCopyWith<$R, UserPageState, $Out> get $asUserPageState =>
      $base.as((v, t, t2) => _UserPageStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserPageStateCopyWith<$R, $In extends UserPageState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  ListCopyWith<$R, Bet, BetCopyWith<$R, Bet, Bet>> get bets;
  ListCopyWith<$R, Match, MatchCopyWith<$R, Match, Match>> get matches;
  $R call({User? user, List<Bet>? bets, List<Match>? matches, int? winnerId});
  UserPageStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserPageStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserPageState, $Out>
    implements UserPageStateCopyWith<$R, UserPageState, $Out> {
  _UserPageStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserPageState> $mapper =
      UserPageStateMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  ListCopyWith<$R, Bet, BetCopyWith<$R, Bet, Bet>> get bets => ListCopyWith(
    $value.bets,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(bets: v),
  );
  @override
  ListCopyWith<$R, Match, MatchCopyWith<$R, Match, Match>> get matches =>
      ListCopyWith(
        $value.matches,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(matches: v),
      );
  @override
  $R call({User? user, List<Bet>? bets, List<Match>? matches, int? winnerId}) =>
      $apply(
        FieldCopyWithData({
          if (user != null) #user: user,
          if (bets != null) #bets: bets,
          if (matches != null) #matches: matches,
          if (winnerId != null) #winnerId: winnerId,
        }),
      );
  @override
  UserPageState $make(CopyWithData data) => UserPageState(
    user: data.get(#user, or: $value.user),
    bets: data.get(#bets, or: $value.bets),
    matches: data.get(#matches, or: $value.matches),
    winnerId: data.get(#winnerId, or: $value.winnerId),
  );

  @override
  UserPageStateCopyWith<$R2, UserPageState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserPageStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

