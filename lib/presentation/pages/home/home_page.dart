import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/new_match_dialog.dart';
import 'package:offside/presentation/pages/home/profile_sub_page/profile_sub_page.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:offside/presentation/providers/user_is_admin.dart';
import 'package:offside/presentation/widgets/inflater.dart';

import 'home_page_controller.dart';
import 'main_sub_page/main_sub_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }
}

enum HomePageTab {
  table,
  matches,
  profile,
}

class _HomePageState extends ConsumerState<HomePage> {
  var currentTab = HomePageTab.table;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentTab.index,
          children: const [
            MainSubPage(),
            MatchesSubPage(),
            ProfileSubPage(),
          ],
        ),
      ),
      floatingActionButton: Inflater(
        inflated: currentTab == HomePageTab.matches && ref.watch(userIsAdminProvider),
        child: FloatingActionButton(
          onPressed: () async => await NewMatchDialog.show(context, (match) {
            ref.read(homePageControllerProvider.notifier).addMatch(match);
          }),
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentTab.index,
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Główna',
            tooltip: '',
          ),
          const NavigationDestination(
            icon: Icon(Icons.sports_soccer),
            label: 'Mecze',
            tooltip: '',
          ),
          NavigationDestination(
            icon: switch (ref.watch(currentUserProvider)) {
              AsyncData(value: final user) =>
                user?.avatar(context, radius: 12, fontSize: 10) ?? const Icon(Icons.person),
              _ => const Icon(Icons.person),
            },
            label: 'Profil',
            tooltip: '',
          ),
        ],
        onDestinationSelected: (index) => setState(() => currentTab = HomePageTab.values[index]),
      ),
    );
  }
}
