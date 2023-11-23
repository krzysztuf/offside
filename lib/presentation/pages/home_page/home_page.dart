import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/domain/models/user.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:offside/presentation/widgets/square.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends ConsumerState<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          const TableSubPage(),
          const MatchesSubPage(),
          Container(color: Colors.blueAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.table_view),
            label: 'Tabela',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Mecze',
          ),
          BottomNavigationBarItem(
            icon: ref.watch(currentUserProvider).when(
                  data: (user) {
                    return user!.avatar(borderColor: Theme.of(context).colorScheme.outline);
                  },
                  error: (error, stackTrace) {
                    log(error.toString(), stackTrace: stackTrace);
                    return Text(error.toString());
                  },
                  loading: () => const Square(
                    size: 26,
                    child: CircularProgressIndicator(),
                  ),
                ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
