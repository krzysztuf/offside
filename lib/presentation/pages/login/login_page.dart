import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/widgets/enabled.dart';

import 'login_page_controller.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginPageControllerProvider);

    if (state.gettingUserInfo || state.loggedIn) {
      if (state.loggedIn) {
        WidgetsBinding.instance.addPostFrameCallback((_) => context.pushNamed('home'));
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
            children: [
              const Gap(128),
              TextField(
                controller: userNameController,
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
              ElevatedButton(
                onPressed: () {
                  ref.read(loginPageControllerProvider.notifier).register(
                        userNameController.text,
                        passwordController.text,
                      );
                },
                child: const Text('Zarejestruj się'),
              ),
              const Gap(32),
              Enabled(
                enabled: !state.loggedIn,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(loginPageControllerProvider.notifier).login(
                          userNameController.text,
                          passwordController.text,
                        );
                  },
                  child: const Text('Zaloguj'),
                ),
              ),
              const Gap(32),
              Enabled(
                enabled: state.loggedIn,
                child: ElevatedButton(
                  onPressed: () => ref.read(loginPageControllerProvider.notifier).logout(),
                  child: const Text('Wyloguj'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
