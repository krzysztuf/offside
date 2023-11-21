import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inspection_sidecar/domain/models/automation/automation_flow.dart';
import 'package:inspection_sidecar/presentation/providers/flows/execute_flow_provider.dart';

extension AutomationFlowExecute on AutomationFlow {
  Future<void> execute(WidgetRef ref, {String? input}) {
    return ref.read(executeStepsProvider(
      steps,
      input: input,
    ).future);
  }
}
