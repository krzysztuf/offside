import 'package:offside/domain/entities/user.dart';

class MainSubPageState {}

class LoadingMainTableState extends MainSubPageState {}

class MainTableReadyState extends MainSubPageState {
  final List<User> users;

  MainTableReadyState(this.users);
}
