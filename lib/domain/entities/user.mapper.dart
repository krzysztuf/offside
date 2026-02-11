// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static int _$id(User v) => v.id;
  static const Field<User, int> _f$id = Field('id', _$id, opt: true, def: 0);
  static String _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field('name', _$name);
  static String _$surname(User v) => v.surname;
  static const Field<User, String> _f$surname = Field('surname', _$surname);
  static int? _$imageId(User v) => v.imageId;
  static const Field<User, int> _f$imageId = Field(
    'imageId',
    _$imageId,
    opt: true,
  );
  static int? _$winnerPredictionId(User v) => v.winnerPredictionId;
  static const Field<User, int> _f$winnerPredictionId = Field(
    'winnerPredictionId',
    _$winnerPredictionId,
    opt: true,
  );

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #name: _f$name,
    #surname: _f$surname,
    #imageId: _f$imageId,
    #winnerPredictionId: _f$winnerPredictionId,
  };

  static User _instantiate(DecodingData data) {
    return User(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      surname: data.dec(_f$surname),
      imageId: data.dec(_f$imageId),
      winnerPredictionId: data.dec(_f$winnerPredictionId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl<User, User>(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? surname,
    int? imageId,
    int? winnerPredictionId,
  });
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? surname,
    Object? imageId = $none,
    Object? winnerPredictionId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (surname != null) #surname: surname,
      if (imageId != $none) #imageId: imageId,
      if (winnerPredictionId != $none) #winnerPredictionId: winnerPredictionId,
    }),
  );
  @override
  User $make(CopyWithData data) => User(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    surname: data.get(#surname, or: $value.surname),
    imageId: data.get(#imageId, or: $value.imageId),
    winnerPredictionId: data.get(
      #winnerPredictionId,
      or: $value.winnerPredictionId,
    ),
  );

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

