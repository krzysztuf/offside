import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ViewModelMixin<ViewModel extends AutoDisposeNotifier<State>, State, WidgetType extends ConsumerStatefulWidget>
    on ConsumerState<WidgetType> {
  AutoDisposeNotifierProvider<ViewModel, State> get viewModelProvider;

  State get state => ref.read(viewModelProvider);

  ViewModel get viewModel => ref.read(viewModelProvider.notifier);

  State watchState() => ref.watch(viewModelProvider);
}
