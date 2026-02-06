import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_dto.mapper.dart';

@MappableClass()
class UserDto with UserDtoMappable {
  final int id;
  final String name;
  final String surname;
  final String? nickname;
  final String? image;
  @MappableField(key: 'winner_prediction_id')
  final int? winnerPredictionId;

  const UserDto({
    required this.id,
    required this.name,
    required this.surname,
    this.nickname,
    this.image,
    this.winnerPredictionId,
  });

  User toEntity() {
    return User(
      id: id,
      name: name,
      surname: surname,
      nickname: nickname,
      image: image,
      winnerPredictionId: winnerPredictionId,
    );
  }
}
