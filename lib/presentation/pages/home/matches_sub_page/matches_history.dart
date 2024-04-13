import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchesHistory extends ConsumerWidget {
  const MatchesHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poprzednie'),
      ),
      body: Center(
        child: Text('Historia meczów'),
      ),
    );
  }
}
