import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:offside/data/models/user_dto.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/models/match_dto.dart';
import 'package:offside/data/models/bet_dto.dart';
import 'package:offside/data/models/private_table_dto.dart';

part 'offside_api_service.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class OffsideApiService {
  factory OffsideApiService(Dio dio, {String baseUrl}) = _OffsideApiService;

  @GET("/users")
  Future<List<UserDto>> getUsers();

  @GET("/users/{id}")
  Future<UserDto> getUserById(@Path("id") int id);

  @GET("/teams")
  Future<List<TeamDto>> getTeams();

  @GET("/teams/{id}")
  Future<TeamDto> getTeamById(@Path("id") int id);

  @GET("/matches")
  Future<List<MatchDto>> getMatches();

  @GET("/matches/{id}")
  Future<MatchDto> getMatchById(@Path("id") int id);

  @GET("/bets")
  Future<List<BetDto>> getBets();

  @GET("/matches/{matchId}/bets")
  Future<List<BetDto>> getBetsByMatchId(@Path("matchId") int matchId);

  @GET("/users/{userId}/bets")
  Future<List<BetDto>> getBetsByUserId(@Path("userId") int userId);

  @GET("/private-tables")
  Future<List<PrivateTableDto>> getPrivateTables();

  @GET("/private-tables/{id}")
  Future<PrivateTableDto> getPrivateTableById(@Path("id") int id);
}
