import 'package:offside/domain/entities/user.dart';

class TableSubPageState {}

class LoadingMainTableState extends TableSubPageState {}

class MainTableReadyState extends TableSubPageState {
  final List<User> users;

  MainTableReadyState(this.users);
}
