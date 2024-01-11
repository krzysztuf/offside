import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:offside/core/mapping/entity_to_firestore_mapping.dart';
import 'package:offside/data/sources/local/shared_preferences_holder.dart';
import 'package:offside/domain/entities/app_setting.dart';
import 'package:offside/firebase_options.dart';
import 'package:offside/offside_router.dart';
import 'package:offside/offside_themes.dart';

import 'presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHolder.initialize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  GetIt.instance.addEntityFirestoreModelsMapping();

  initializeDateFormatting('pl', null);

  runApp(
    ProviderScope(
      overrides: [
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
    AppSetting.currentUserId;

    final router = ref.watch(offsideRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: OffsideThemes.light(context),
      darkTheme: OffsideThemes.dark(context),
      locale: const Locale('pl', 'PL'),
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
