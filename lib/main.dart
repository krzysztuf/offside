import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offside/offside_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: OffsideApp(),
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
      title: 'Flutter Demo',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.robotoTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
