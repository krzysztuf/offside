import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:supercharged/supercharged.dart';

class TableMembersPicker extends ConsumerStatefulWidget {
  final Set<String> members;
  final List<User> users;
  final Function(Set<String> memberIds) onSaved;
  final ScrollController? scrollController;

  const TableMembersPicker({
    super.key,
    required this.members,
    required this.users,
    required this.onSaved,
    this.scrollController,
  });

  static Future<void> bottomSheet(
    BuildContext context, {
    required Set<String> members,
    required List<User> users,
    required Function(Set<String> memberIds) onSaved,
  }) async {
    return showFlexibleBottomSheet(
      context: context,
      duration: 400.milliseconds,
      isSafeArea: true,
      initHeight: 0.8,
      anchors: [0.0, 0.8, 1],
      bottomSheetBorderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      builder: (context, scrollController, _) {
        return TableMembersPicker(
          members: members,
          users: users,
          scrollController: scrollController,
          onSaved: onSaved,
        );
      },
    );
  }

  @override
  ConsumerState<TableMembersPicker> createState() => _TableMembersPickerState();
}

class _TableMembersPickerState extends ConsumerState<TableMembersPicker> {
  Set<String> selectedMembers = {};

  @override
  void initState() {
    selectedMembers = widget.members;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.close),
                  label: 'Anuluj'.text,
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.save),
                  label: 'Zapisz'.text,
                  onPressed: () {
                    widget.onSaved(selectedMembers);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          ...widget.users.map(
            (user) {
              return Enabled(
                enabled: ref.read(currentUserIdSettingProvider) != user.id,
                child: ListTile(
                  leading: user.avatar(context, ref, radius: 16, fontSize: 14),
                  title: user.fullName.text,
                  trailing: SizedBox(
                    width: 80,
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        return Checkbox(
                          value: selectedMembers.contains(user.id),
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                selectedMembers.add(user.id);
                              } else {
                                selectedMembers.remove(user.id);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
