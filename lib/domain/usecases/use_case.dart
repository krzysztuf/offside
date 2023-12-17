abstract interface class UseCase<T> {
  T run();
}

abstract interface class UseCaseWithParam<T, Param> {
  T run(Param param);
}

abstract interface class UseCaseWithParams<T, Param1, Param2> {
  T run(Param1 param1, Param2 param2);
}
