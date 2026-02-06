// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'competition.dart';

class CompetitionMapper extends ClassMapperBase<Competition> {
  CompetitionMapper._();

  static CompetitionMapper? _instance;
  static CompetitionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompetitionMapper._());
      MatchMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Competition';

  static int _$id(Competition v) => v.id;
  static const Field<Competition, int> _f$id = Field('id', _$id);
  static String _$name(Competition v) => v.name;
  static const Field<Competition, String> _f$name = Field('name', _$name);
  static List<Match>? _$matches(Competition v) => v.matches;
  static const Field<Competition, List<Match>> _f$matches = Field(
    'matches',
    _$matches,
    opt: true,
  );

  @override
  final MappableFields<Competition> fields = const {
    #id: _f$id,
    #name: _f$name,
    #matches: _f$matches,
  };

  static Competition _instantiate(DecodingData data) {
    return Competition(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      matches: data.dec(_f$matches),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Competition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Competition>(map);
  }

  static Competition fromJson(String json) {
    return ensureInitialized().decodeJson<Competition>(json);
  }
}

mixin CompetitionMappable {
  String toJson() {
    return CompetitionMapper.ensureInitialized().encodeJson<Competition>(
      this as Competition,
    );
  }

  Map<String, dynamic> toMap() {
    return CompetitionMapper.ensureInitialized().encodeMap<Competition>(
      this as Competition,
    );
  }

  CompetitionCopyWith<Competition, Competition, Competition> get copyWith =>
      _CompetitionCopyWithImpl<Competition, Competition>(
        this as Competition,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CompetitionMapper.ensureInitialized().stringifyValue(
      this as Competition,
    );
  }

  @override
  bool operator ==(Object other) {
    return CompetitionMapper.ensureInitialized().equalsValue(
      this as Competition,
      other,
    );
  }

  @override
  int get hashCode {
    return CompetitionMapper.ensureInitialized().hashValue(this as Competition);
  }
}

extension CompetitionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Competition, $Out> {
  CompetitionCopyWith<$R, Competition, $Out> get $asCompetition =>
      $base.as((v, t, t2) => _CompetitionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CompetitionCopyWith<$R, $In extends Competition, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Match, MatchCopyWith<$R, Match, Match>>? get matches;
  $R call({int? id, String? name, List<Match>? matches});
  CompetitionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CompetitionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Competition, $Out>
    implements CompetitionCopyWith<$R, Competition, $Out> {
  _CompetitionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Competition> $mapper =
      CompetitionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Match, MatchCopyWith<$R, Match, Match>>? get matches =>
      $value.matches != null
      ? ListCopyWith(
          $value.matches!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(matches: v),
        )
      : null;
  @override
  $R call({int? id, String? name, Object? matches = $none}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (matches != $none) #matches: matches,
    }),
  );
  @override
  Competition $make(CopyWithData data) => Competition(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    matches: data.get(#matches, or: $value.matches),
  );

  @override
  CompetitionCopyWith<$R2, Competition, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CompetitionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

