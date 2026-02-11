// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_dto.dart';

class ImageDtoMapper extends ClassMapperBase<ImageDto> {
  ImageDtoMapper._();

  static ImageDtoMapper? _instance;
  static ImageDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageDto';

  static String _$base64(ImageDto v) => v.base64;
  static const Field<ImageDto, String> _f$base64 = Field('base64', _$base64);

  @override
  final MappableFields<ImageDto> fields = const {#base64: _f$base64};

  static ImageDto _instantiate(DecodingData data) {
    return ImageDto(base64: data.dec(_f$base64));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageDto>(map);
  }

  static ImageDto fromJson(String json) {
    return ensureInitialized().decodeJson<ImageDto>(json);
  }
}

mixin ImageDtoMappable {
  String toJson() {
    return ImageDtoMapper.ensureInitialized().encodeJson<ImageDto>(
      this as ImageDto,
    );
  }

  Map<String, dynamic> toMap() {
    return ImageDtoMapper.ensureInitialized().encodeMap<ImageDto>(
      this as ImageDto,
    );
  }

  ImageDtoCopyWith<ImageDto, ImageDto, ImageDto> get copyWith =>
      _ImageDtoCopyWithImpl<ImageDto, ImageDto>(
        this as ImageDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImageDtoMapper.ensureInitialized().stringifyValue(this as ImageDto);
  }

  @override
  bool operator ==(Object other) {
    return ImageDtoMapper.ensureInitialized().equalsValue(
      this as ImageDto,
      other,
    );
  }

  @override
  int get hashCode {
    return ImageDtoMapper.ensureInitialized().hashValue(this as ImageDto);
  }
}

extension ImageDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, ImageDto, $Out> {
  ImageDtoCopyWith<$R, ImageDto, $Out> get $asImageDto =>
      $base.as((v, t, t2) => _ImageDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageDtoCopyWith<$R, $In extends ImageDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? base64});
  ImageDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageDto, $Out>
    implements ImageDtoCopyWith<$R, ImageDto, $Out> {
  _ImageDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageDto> $mapper =
      ImageDtoMapper.ensureInitialized();
  @override
  $R call({String? base64}) =>
      $apply(FieldCopyWithData({if (base64 != null) #base64: base64}));
  @override
  ImageDto $make(CopyWithData data) =>
      ImageDto(base64: data.get(#base64, or: $value.base64));

  @override
  ImageDtoCopyWith<$R2, ImageDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

