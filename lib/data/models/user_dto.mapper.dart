// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_dto.dart';

class UserDtoMapper extends ClassMapperBase<UserDto> {
  UserDtoMapper._();

  static UserDtoMapper? _instance;
  static UserDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserDto';

  static int _$id(UserDto v) => v.id;
  static const Field<UserDto, int> _f$id = Field('id', _$id);
  static String _$name(UserDto v) => v.name;
  static const Field<UserDto, String> _f$name = Field('name', _$name);
  static String _$surname(UserDto v) => v.surname;
  static const Field<UserDto, String> _f$surname = Field('surname', _$surname);
  static String? _$nickname(UserDto v) => v.nickname;
  static const Field<UserDto, String> _f$nickname = Field(
    'nickname',
    _$nickname,
    opt: true,
  );
  static String? _$image(UserDto v) => v.image;
  static const Field<UserDto, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static int? _$winnerPredictionId(UserDto v) => v.winnerPredictionId;
  static const Field<UserDto, int> _f$winnerPredictionId = Field(
    'winnerPredictionId',
    _$winnerPredictionId,
    key: r'winner_prediction_id',
    opt: true,
  );

  @override
  final MappableFields<UserDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #surname: _f$surname,
    #nickname: _f$nickname,
    #image: _f$image,
    #winnerPredictionId: _f$winnerPredictionId,
  };

  static UserDto _instantiate(DecodingData data) {
    return UserDto(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      surname: data.dec(_f$surname),
      nickname: data.dec(_f$nickname),
      image: data.dec(_f$image),
      winnerPredictionId: data.dec(_f$winnerPredictionId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserDto>(map);
  }

  static UserDto fromJson(String json) {
    return ensureInitialized().decodeJson<UserDto>(json);
  }
}

mixin UserDtoMappable {
  String toJson() {
    return UserDtoMapper.ensureInitialized().encodeJson<UserDto>(
      this as UserDto,
    );
  }

  Map<String, dynamic> toMap() {
    return UserDtoMapper.ensureInitialized().encodeMap<UserDto>(
      this as UserDto,
    );
  }

  UserDtoCopyWith<UserDto, UserDto, UserDto> get copyWith =>
      _UserDtoCopyWithImpl<UserDto, UserDto>(
        this as UserDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserDtoMapper.ensureInitialized().stringifyValue(this as UserDto);
  }

  @override
  bool operator ==(Object other) {
    return UserDtoMapper.ensureInitialized().equalsValue(
      this as UserDto,
      other,
    );
  }

  @override
  int get hashCode {
    return UserDtoMapper.ensureInitialized().hashValue(this as UserDto);
  }
}

extension UserDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserDto, $Out> {
  UserDtoCopyWith<$R, UserDto, $Out> get $asUserDto =>
      $base.as((v, t, t2) => _UserDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserDtoCopyWith<$R, $In extends UserDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? surname,
    String? nickname,
    String? image,
    int? winnerPredictionId,
  });
  UserDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserDto, $Out>
    implements UserDtoCopyWith<$R, UserDto, $Out> {
  _UserDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserDto> $mapper =
      UserDtoMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? surname,
    Object? nickname = $none,
    Object? image = $none,
    Object? winnerPredictionId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (surname != null) #surname: surname,
      if (nickname != $none) #nickname: nickname,
      if (image != $none) #image: image,
      if (winnerPredictionId != $none) #winnerPredictionId: winnerPredictionId,
    }),
  );
  @override
  UserDto $make(CopyWithData data) => UserDto(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    surname: data.get(#surname, or: $value.surname),
    nickname: data.get(#nickname, or: $value.nickname),
    image: data.get(#image, or: $value.image),
    winnerPredictionId: data.get(
      #winnerPredictionId,
      or: $value.winnerPredictionId,
    ),
  );

  @override
  UserDtoCopyWith<$R2, UserDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

