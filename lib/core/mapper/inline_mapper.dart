import 'mapper.dart';

class InlineMapper<From, To> implements Mapper<From, To> {
  final To Function(From) mappingFunction;

  InlineMapper(this.mappingFunction);

  @override
  To map(From from) {
    return mappingFunction(from);
  }
}
