import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/data/repositories/providers.dart';
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
  Widget avatar(
    BuildContext context,
    WidgetRef ref, {
    double radius = 12,
    double fontSize = 10,
    double elevation = 1.5,
  }) {
    final initialsText = buildInitialsText(context, fontSize);
    return FutureBuilder(
      future: getDownloadableUrl(ref),
      builder: (context, snapshot) {
        final initialsAvatar = Avatar(elevation: elevation, radius: radius, child: initialsText);

        if (snapshot.connectionState == ConnectionState.waiting) {
          return initialsAvatar;
        }

        final url = snapshot.data;
        if (url == null) {
          return initialsAvatar;
        }

        return Avatar(
          elevation: elevation,
          radius: radius,
          image: CachedNetworkImageProvider(url),
        );
      },
    );
  }

  Future<String?> getDownloadableUrl(WidgetRef ref) async {
    if (image == null) {
      return null;
    }

    return await ref.read(imageRepositoryProvider).getDownloadUrl(image!);
  }

  Text? buildInitialsText(BuildContext context, double fontSize) {
    final initialsStyle = context.textTheme.bodyMedium!.copyWith(fontSize: fontSize);
    return initials.styledText(initialsStyle);
  }
}

extension NameExtensions on User {
  String get fullName => '$name $surname';

  String get initials => '${name[0]}${surname[0]}';
}

extension AdminExtension on User {
  bool get isAdmin => name == 'Krzysztof';
}
