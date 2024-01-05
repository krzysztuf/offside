import 'package:get_it/get_it.dart';
import 'package:offside/core/mapper/mapper_from_get_it.dart';
import 'package:offside/core/mapper/mapper_map_many.dart';

import 'mapper.dart';

class AutoMapper<From, To> {
  Mapper<From, To> get _mapper => GetIt.instance.mapper<From, To>();

  To map(From from) {
    return _mapper.map(from);
  }

  List<To> mapMany(List<From> from) {
    return _mapper.mapMany(from);
  }
}
