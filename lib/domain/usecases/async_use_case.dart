import 'use_case.dart';

abstract class AsyncUseCase<T> extends UseCase<Future<T>> {}
