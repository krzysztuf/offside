import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'domain/entities/user.dart';
import 'presentation/pages/home_page/home_page.dart';
import 'presentation/pages/user_page/user_page.dart';
import 'presentation/pages/user_page/user_page_controller.dart';

part 'offside_router.g.dart';

@riverpod
GoRouter offsideRouter(OffsideRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(
          key: state.pageKey,
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      );
    },
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'userDetails',
            name: 'userDetails',
            builder: (context, state) {
              return ProviderScope(
                overrides: [
                  userPageControllerProvider.overrideWith(() => UserPageController()),
                  userOfUserPageProvider.overrideWith((_) => state.extra as User),
                ],
                child: const UserPage(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
