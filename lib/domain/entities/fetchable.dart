abstract interface class Fetchable<T> {
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
}

const noOpFetchable = NoOpFetchable();
