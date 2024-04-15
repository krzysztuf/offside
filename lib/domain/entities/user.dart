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
    required String firebaseId,
    required String name,
    required String surname,
    String? nickname,
    String? image,
    String? winnerPredictionId,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  String get identifier => id;
}

extension UserAvatar on User {
  Widget avatar(BuildContext context, {double radius = 12, double fontSize = 10, double elevation = 1.5}) {
    return Avatar(
      elevation: elevation,
      radius: radius,
      image: maybeImage(),
      child: maybeText(context, fontSize),
    );
  }

  ImageProvider<Object>? maybeImage() {
    return image != null ? AssetImage(image!) : null;
  }

  Text? maybeText(BuildContext context, double fontSize) {
    final initialsStyle = context.textTheme.bodyMedium!.copyWith(fontSize: fontSize);
    return image == null ? Text(initials, style: initialsStyle) : null;
  }
}

extension NameExtensions on User {
  String get fullName => '$name $surname';

  String get initials => '${name[0]}${surname[0]}';
}

extension AdminExtension on User {
  bool get isAdmin => name == 'Krzysztof';
}
