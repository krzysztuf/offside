abstract interface class Fetchable<T> {
  bool get hasValue;

  T get value;

  Future<void> fetch({bool force = false});
}

class NoOpFetchable<T> implements Fetchable<T> {
  const NoOpFetchable();

  @override
  Future<void> fetch({bool force = false}) {
    throw UnimplementedError('NoOpFetchable');
  }

  @override
  get value => throw UnimplementedError('NoOpFetchable');

  @override
  bool get hasValue => throw UnimplementedError('NoOpFetchable');
}
