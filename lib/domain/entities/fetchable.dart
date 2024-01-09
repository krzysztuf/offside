abstract interface class Fetchable<T> {
  bool get hasValue;

  T get value;

  Future<void> fetch();
}

class NoOpFetchable<T> implements Fetchable<T> {
  const NoOpFetchable();

  @override
  Future<void> fetch() {
    throw UnimplementedError('NoOpFetchable');
  }

  @override
  get value => throw UnimplementedError('NoOpFetchable');

  @override
  bool get hasValue => throw UnimplementedError('NoOpFetchable');
}

const noOpFetchable = NoOpFetchable();
