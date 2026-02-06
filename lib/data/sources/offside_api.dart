import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:offside/data/models/user_dto.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/models/match_dto.dart';
import 'package:offside/data/models/bet_dto.dart';
import 'package:offside/data/models/private_table_dto.dart';

part 'offside_api.g.dart';

@RestApi(baseUrl: "http://localhost:8080", parser: Parser.DartMappable)
abstract class OffsideApi {
  factory OffsideApi(Dio dio, {String baseUrl}) = _OffsideApi;

  @GET("/users")
  Future<List<UserDto>> users();

  @GET("/users/{id}")
  Future<UserDto> userById(@Path("id") int id);

  @GET("/teams")
  Future<List<TeamDto>> teams();

  @GET("/teams/{id}")
  Future<TeamDto> teamById(@Path("id") int id);

  @GET("/matches")
  Future<List<MatchDto>> matches();

  @GET("/matches/{id}")
  Future<MatchDto> matchById(@Path("id") int id);

  @GET("/bets")
  Future<List<BetDto>> bets();

  @GET("/matches/{matchId}/bets")
  Future<List<BetDto>> betsByMatchId(@Path("matchId") int matchId);

  @GET("/users/{userId}/bets")
  Future<List<BetDto>> betsByUserId(@Path("userId") int userId);

  @GET("/private-tables")
  Future<List<PrivateTableDto>> privateTables();

  @GET("/private-tables/{id}")
  Future<PrivateTableDto> privateTableById(@Path("id") int id);
}
