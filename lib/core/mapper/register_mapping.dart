import 'package:get_it/get_it.dart';

import 'inline_mapper.dart';
import 'mapper.dart';

extension RegisterMapping on GetIt {
  void addMapper<From, To>(To Function(From source) mapper) {
    registerFactory<Mapper<From, To>>(() => InlineMapper<From, To>(mapper));
  }

  void addBidirectionalMapper<First, Second>(
      {required Second Function(First source) forward, required First Function(Second source) backward}) {
    registerFactory<Mapper<First, Second>>(() => InlineMapper<First, Second>(forward));
    registerFactory<Mapper<Second, First>>(() => InlineMapper<Second, First>(backward));
  }
}
