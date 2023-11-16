import 'package:get_it/get_it.dart';

extension DtoToModelsMapping on GetIt {
  void registerDtoMapping() {}

// void _registerMapping<From, To>(To Function(From) mapper) {
//   registerFactory<Mapper<From, To>>(() => InlineMapper<From, To>(mapper));
// }
}
