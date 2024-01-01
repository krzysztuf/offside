import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/identifiable.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User implements Identifiable {
  const factory User({
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(includeToJson: false) String id,
    required String name,
    required String surname,
    String? nickname,
    String? image,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  String get identifier => id;
}

extension UserAvatar on User {
  Widget avatar({Color? borderColor, double? radius = 12}) {
    return Container(
      padding: EdgeInsets.all(borderColor != null ? 1 : 0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: borderColor,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: image != null ? AssetImage(image!) : null,
        child: image == null ? initials.text : null,
      ),
    );
  }
}

extension NameExtensions on User {
  String get fullName => '$name $surname';

  String get initials => '${name[0]}${surname[0]}';
}
