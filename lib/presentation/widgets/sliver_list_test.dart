import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SliverListTest extends StatelessWidget {
  const SliverListTest({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          snap: false,
          floating: true,
          pinned: true,
          bottom: AppBar(
            title: const Text('Offside'),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Material(
                  elevation: 4,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              )
            ],
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.lightBlue,
                  ],
                ),
              ),
            ),
            title: Row(
              children: [
                const Expanded(
                  child: ListTile(
                    title: Text('Krzysztof'),
                    subtitle: Text('Welcome to Offside!'),
                  ),
                ),
                Material(
                  elevation: 4,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                const Gap(8),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text("List Item $index"),
            ),
          ),
        ),
      ],
    );
  }
}
