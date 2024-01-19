import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';

class UserDropdown extends ConsumerStatefulWidget {
  final List<User> users;
  final Function(User user) onChanged;

  const UserDropdown({
    super.key,
    required this.users,
    required this.onChanged,
  });

  @override
  ConsumerState<UserDropdown> createState() => _UserDropdownState();
}

class _UserDropdownState extends ConsumerState<UserDropdown> {
  User? selectedUser;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userId = ref.read(currentUserIdSettingProvider);
      setState(() {
        selectedUser = widget.users.find((user) => user.id == userId);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<User>(
      initialSelection: selectedUser,
      label: const Text('Select User'),
      onSelected: (user) {
        widget.onChanged(user!);
        setState(() => selectedUser = user);
      },
      dropdownMenuEntries: widget.users.map<DropdownMenuEntry<User>>((User user) {
        return DropdownMenuEntry<User>(
          value: user,
          label: user.fullName,
        );
      }).toList(),
    );
  }
}
