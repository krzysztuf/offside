import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/presentation/pages/providers/teams_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
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
            );
          },
          error: (error, stackTrace) => Center(child: error.toString().text),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
