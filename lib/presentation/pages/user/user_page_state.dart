import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_page_state.mapper.dart';

@MappableClass()
class UserPageState with UserPageStateMappable {
  final User user;
  final List<Bet> bets;
  final List<Match> matches;
  final int winnerId;

  const UserPageState({
    required this.user,
    required this.bets,
    required this.matches,
    required this.winnerId,
  });
}
