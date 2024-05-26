import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/presentation/pages/delete_user/delete_user_page_controller.dart';
import 'package:offside/presentation/widgets/enabled.dart';

class DeleteUserPage extends ConsumerStatefulWidget {
  const DeleteUserPage({super.key});

  @override
  ConsumerState createState() => _DeleteUserPageState();
}

class _DeleteUserPageState extends ConsumerState<DeleteUserPage> with SingleTickerProviderStateMixin {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool get credentialsProvided => emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

  bool userNotRegistered = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_refresh);
    passwordController.addListener(_refresh);
  }

  @override
  void dispose() {
    _disposeController(emailController);
    _disposeController(passwordController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildLoginView(),
          ),
        ),
      ),
    );
  }

  void _disposeController(TextEditingController controller) {
    controller.removeListener(_refresh);
    controller.dispose();
  }

  void _refresh() {
    setState(() {});
  }

  Widget buildLoginView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'E-mail',
            filled: true,
          ),
        ),
        const Gap(16),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Hasło',
            filled: true,
          ),
        ),
        const Gap(32),
        Enabled(
          enabled: credentialsProvided,
          child: SizedBox(
            height: 32,
            child: ElevatedButton(
              onPressed: () {
                removeUser()
                    .then((_) => showUserDeleteDialog(context))
                    .onError((error, _) => _showErrorDialog(error!, context));
              },
              child: const Text('Usuń użytkownika'),
            ),
          ),
        ),
      ],
    );
  }

  void _showErrorDialog(Object error, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Błąd logowania'),
          content: error.toString().text,
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void showUserDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Usunięto'),
          content: 'Użytkownik ${emailController.text} został usunięty'.text,
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  Future<void> removeUser() async {
    await ref.read(deleteUserPageControllerProvider.notifier).deleteUser(
          emailController.text,
          passwordController.text,
        );
  }
}
