import 'package:offside/domain/usecases/use_case.dart';

abstract interface class AsyncUseCase<T> implements UseCase<Future<T>> {}

abstract interface class AsyncUseCaseWithParam<T, Param> implements UseCaseWithParam<Future<T>, Param> {}

abstract interface class AsyncUseCaseWithParams<T, Param1, Param2>
    implements UseCaseWithParams<Future<T>, Param1, Param2> {}
