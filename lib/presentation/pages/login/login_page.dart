import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/widgets/enabled.dart';

import 'login_page_controller.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  bool get credentialsProvided => emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

  bool get nameDetailsProvided => nameController.text.isNotEmpty && surnameController.text.isNotEmpty;

  bool userNotRegistered = false;

  @override
  void initState() {
    log('initializing state');
    super.initState();
    emailController.text = 'krzysztof.potrzasaj@gmail.com';
    passwordController.text = 'ecikoWaty2k';

    emailController.addListener(_refresh);
    passwordController.addListener(_refresh);
    nameController.addListener(_refresh);
    surnameController.addListener(_refresh);
  }

  @override
  void dispose() {
    _disposeController(emailController);
    _disposeController(passwordController);
    _disposeController(nameController);
    _disposeController(surnameController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginPageControllerProvider);

    // log(state.toString());

    if (state.gettingUserInfo || state.loggedIn) {
      if (state.loggedIn) {
        WidgetsBinding.instance.addPostFrameCallback((_) => context.goNamed('home'));
      }

      return Scaffold(
        body: Center(
          child: LoadingAnimationWidget.fourRotatingDots(
            size: 64,
            color: context.colorScheme.primary,
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Zaloguj się',
                style: context.textTheme.displaySmall,
              ),
              const Gap(64),
              CheckboxListTile(
                  title: const Text('Nie posiadam konta'),
                  subtitle: const Text('Zaznacz, jeśli jeszcze się nie zarejestrowałeś'),
                  value: userNotRegistered,
                  onChanged: (notRegistered) {
                    setState(() => userNotRegistered = notRegistered ?? false);
                  }),
              const Gap(16),
              TextField(
                controller: emailController,
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
              Visibility(
                visible: userNotRegistered,
                child: Column(
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Imię',
                        filled: true,
                      ),
                    ),
                    const Gap(16),
                    TextField(
                      controller: surnameController,
                      decoration: const InputDecoration(
                        hintText: 'Nazwisko',
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(64),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: userNotRegistered && !state.loggingIn,
                    child: Enabled(
                      enabled: credentialsProvided && nameDetailsProvided,
                      child: ElevatedButton(
                        onPressed: () {
                          registerUser();
                        },
                        child: const Text('Zarejestruj'),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !userNotRegistered && !state.loggingIn,
                    child: Enabled(
                      enabled: credentialsProvided,
                      child: ElevatedButton(
                        onPressed: () {
                          loginWithProvidedCredentials()
                              .then((_) => context.goNamed('home'))
                              .onError((error, _) => showErrorDialog(error!, context));
                        },
                        child: const Text('Zaloguj'),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: state.loggingIn,
                    child: LoadingAnimationWidget.fourRotatingDots(
                      color: context.colorScheme.primary,
                      size: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() {
    return ref.read(loginPageControllerProvider.notifier).register(
          emailController.text,
          passwordController.text,
        );
  }

  Future<void> loginWithProvidedCredentials() {
    return ref.read(loginPageControllerProvider.notifier).login(
          emailController.text,
          passwordController.text,
        );
  }

  void showErrorDialog(Object error, BuildContext context) {
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

  void _disposeController(TextEditingController controller) {
    controller.removeListener(_refresh);
    controller.dispose();
  }

  void _refresh() {
    setState(() {});
  }
}
