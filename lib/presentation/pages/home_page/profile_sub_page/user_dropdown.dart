import 'package:flutter/material.dart';
import 'package:offside/domain/entities/user.dart';

class UserDropdown extends StatefulWidget {
  final List<User> users;
  final Function(User user) onChanged;

  const UserDropdown({
    super.key,
    required this.users,
    required this.onChanged,
  });

  @override
  State<UserDropdown> createState() => _UserDropdownState();
}

class _UserDropdownState extends State<UserDropdown> {
  User? selectedUser;

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
