import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/models/identifiable.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User implements Identifiable {
  const factory User({
    required int id,
    required String name,
    required String surname,
    String? nickname,
    String? image,
  }) = _User;

  User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  int get identifier => id;
}

extension UserAvatar on User {
  Widget avatar({Color? borderColor}) {
    return Container(
      padding: EdgeInsets.all(borderColor != null ? 1 : 0),
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
