import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/identifiable.dart';
import 'package:offside/presentation/widgets/avatar.dart';

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
  Widget avatar(BuildContext context, {bool dense = false, double elevation = 1.5}) {
    return Avatar(
      elevation: elevation,
      radius: dense ? 12 : 30,
      image: maybeImage(),
      child: maybeText(context, dense),
    );
  }

  ImageProvider<Object>? maybeImage() {
    return image != null ? AssetImage(image!) : null;
  }

  Text? maybeText(BuildContext context, bool dense) {
    final initialsStyle = context.textTheme.bodyMedium!.copyWith(fontSize: dense ? 10 : 14);
    return image == null ? Text(initials, style: initialsStyle) : null;
  }
}

extension NameExtensions on User {
  String get fullName => '$name $surname';

  String get initials => '${name[0]}${surname[0]}';
}
