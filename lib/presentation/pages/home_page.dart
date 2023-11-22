import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/models/user.dart';
import 'package:offside/presentation/pages/providers/teams_provider.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';

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
    final user = ref.watch(currentUserProvider);
    return ref.watch(teamsProvider).when(
          data: (teams) {
            return Scaffold(
              body: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: teams[index].name.text,
                  );
                },
                separatorBuilder: (context, _) => const Divider(height: 1),
                itemCount: teams.length,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: (index) => setState(() => currentIndex = index),
                items: [
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.sports_soccer),
                    label: 'Mecze',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.table_view),
                    label: 'Tabela',
                  ),
                  BottomNavigationBarItem(
                    icon: user.avatar(borderColor: Theme.of(context).colorScheme.outline),
                    label: 'Profil',
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => Center(child: error.toString().text),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
