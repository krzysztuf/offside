import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/data/repositories/teams_in_memory_repository.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/firebase_options.dart';
import 'package:offside/offside_router.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';
import 'package:offside/sidecar_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHolder.initialize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  initializeDateFormatting('pl', null);

  runApp(
    ProviderScope(
      overrides: [
        teamsRepositoryProvider.overrideWith((ref) => TeamsInMemoryRepository()),
        matchBetCardViewModelProvider.overrideWith(() => throw UnimplementedError('MatchBetCardViewModel unavailable')),
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
      theme: SidecarThemes.light(context),
      darkTheme: SidecarThemes.dark(context),
      locale: const Locale('pl', 'PL'),
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
