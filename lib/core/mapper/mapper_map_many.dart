import 'mapper.dart';

extension MapMany<From, To> on Mapper<From, To> {
  List<To> mapMany(List<From> from) {
    return from.map((item) => map(item)).toList();
  }
}
