import 'package:inspection_sidecar/domain/usecases/use_case.dart';

abstract class AsyncUseCase<T> extends UseCase<Future<T>> {}
