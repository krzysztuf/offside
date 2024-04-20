import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/widgets/enabled.dart';

class NewPrivateTableDialog extends ConsumerStatefulWidget {
  final Function(String name) onAccepted;

  const NewPrivateTableDialog({
    super.key,
    required this.onAccepted,
  });

  static Future<void> show(
    BuildContext context, {
    required Function(String name) onAccepted,
  }) async {
    return showDialog(
      context: context,
      builder: (context) => NewPrivateTableDialog(onAccepted: onAccepted),
    );
  }

  @override
  ConsumerState createState() => _NewPrivateTableDialogState();
}

class _NewPrivateTableDialogState extends ConsumerState<NewPrivateTableDialog> {
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.addListener(_refresh);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nowa tabela'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Nazwa tabeli', filled: true),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Anuluj'),
        ),
        Enabled(
          enabled: nameController.text.isNotEmpty,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onAccepted(nameController.text);
            },
            child: const Text('Dodaj'),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    nameController.removeListener(_refresh);
    nameController.dispose();
    super.dispose();
  }

  void _refresh() {
    setState(() {});
  }
}
