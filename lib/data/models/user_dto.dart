import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/user.dart';

part 'user_dto.mapper.dart';

@MappableClass()
class UserDto with UserDtoMappable {
  final int id;
  final String name;
  final String surname;
  @MappableField(key: 'image_id')
  final int? imageId;
  @MappableField(key: 'winner_prediction_id')
  final int? winnerPredictionId;

  const UserDto({
    required this.id,
    required this.name,
    required this.surname,
    this.winnerPredictionId,
    this.imageId,
  });

  User toEntity() {
    return User(id: id, name: name, surname: surname, winnerPredictionId: winnerPredictionId);
  }
}
