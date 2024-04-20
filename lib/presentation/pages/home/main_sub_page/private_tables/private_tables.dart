import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_controller.dart';
import 'package:offside/presentation/widgets/icon_text.dart';

class PrivateTables extends ConsumerWidget {
  final List<UserScoreSummary> userScores;

  const PrivateTables({super.key, required this.userScores});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(privateTablesControllerProvider);

    return Column(
      children: [
        ...state.tables.map((table) => table.name.text),
        const Gap(16),
        const FilledButton.tonal(
          onPressed: null,
          child: IconText(
            icon: Icons.add,
            child: Text('Nowa tabela'),
          ),
        ),
      ],
    );
  }
}
