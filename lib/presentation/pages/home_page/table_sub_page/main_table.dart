import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';

class MainTable extends StatelessWidget {
  final List<User> users;

  const MainTable({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final user in users)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: user.avatar(radius: 20),
              title: user.fullName.text,
              subtitle: user.nickname?.text ?? 'tutaj będzie forma'.styledText(context.textTheme.bodySmall!),
              selected: user.name == 'Krzysztof',
              trailing: Column(
                children: [
                  '24'.styledText(context.textTheme.titleLarge!),
                  const Gap(4),
                  'punkty'.styledText(context.textTheme.bodySmall!),
                ],
              ),
              onTap: () {},
            ),
          ),
      ],
    );
  }
}
