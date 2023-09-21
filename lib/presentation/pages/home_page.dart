import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/pages/providers/teams_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Card(
        child: SizedBox(
          height: 200,
          child: ref.watch(teamsProvider).when(
                data: (teams) {
                  log('teams: ${teams.length}');
                  return Column(
                    children: teams.map(
                      (t) {
                        log('loaded: ${t.logo}');
                        return Row(
                          children: [
                            Image.asset(
                              t.logo,
                              width: 48,
                              height: 48,
                            ),
                          ],
                        );
                      },
                    ).toList(),
                  );
                },
                error: (error, stackTrace) => Container(),
                loading: () => Container(),
              ),
        ),
      ),

      // body: Center(
      //   child: Image.asset(
      //     'assets/images/teams/manchester-united.png',
      //     width: 48,
      //     height: 48,
      //   ),
      // ),
    );
  }
}
