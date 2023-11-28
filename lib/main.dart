import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:offside/core/preferences/app_preferences.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/data/repositories/teams_in_memory_repository.dart';
import 'package:offside/offside_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.initialize();

  initializeDateFormatting('pl', null);

  runApp(
    ProviderScope(
      overrides: [
        teamsRepositoryProvider.overrideWith((ref) => TeamsInMemoryRepository()),
      ],
      child: const OffsideApp(),
    ),
  );
}

class OffsideApp extends ConsumerWidget {
  const OffsideApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(offsideRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        textTheme: GoogleFonts.robotoFlexTextTheme(),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.openSansTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      locale: const Locale('pl', 'PL'),
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
