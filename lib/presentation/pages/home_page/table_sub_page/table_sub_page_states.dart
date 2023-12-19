import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/view_state.dart';

class TableSubPageState extends ViewState {}

class LoadingMainTableState extends TableSubPageState {}

class MainTableReadyState extends TableSubPageState {
  final List<User> users;

  MainTableReadyState(this.users);
}
