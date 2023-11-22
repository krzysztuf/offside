import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String surname,
    String? nickname,
    String? image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserAvatar on User {
  Widget avatar({required Color borderColor}) {
    return Container(
      padding: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: borderColor,
      ),
      child: CircleAvatar(
        radius: 12,
        backgroundImage: image != null ? AssetImage(image!) : null,
        child: image == null ? const Text('KP') : null,
      ),
    );
  }
}
