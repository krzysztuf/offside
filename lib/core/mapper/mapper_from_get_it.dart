import 'package:get_it/get_it.dart';

import 'mapper.dart';

extension MapperFromGetIt on GetIt {
  Mapper<From, To> mapper<From, To>() {
    return GetIt.instance.get<Mapper<From, To>>();
  }
}
