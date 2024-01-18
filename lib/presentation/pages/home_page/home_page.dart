import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/matches_sub_page.dart';
import 'package:offside/presentation/pages/home_page/profile_sub_page/profile_sub_page.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/table_sub_page.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends ConsumerState<HomePage> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: const [
            TableSubPage(),
            MatchesSubPage(),
            ProfileSubPage(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.table_view),
            label: 'Tabela',
          ),
          const NavigationDestination(
            icon: Icon(Icons.sports_soccer),
            label: 'Mecze',
          ),
          NavigationDestination(
            icon: switch (ref.watch(currentUserProvider)) {
              AsyncData(value: final user) =>
                user?.avatar(borderColor: Theme.of(context).colorScheme.outline) ?? const Icon(Icons.person),
              _ => const Icon(Icons.person),
            },
            label: 'Profil',
          ),
        ],
        onDestinationSelected: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
