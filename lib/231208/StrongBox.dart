import 'KeyType.dart';

class StrongBox<T> {
  T _instance;
  final KeyType _key;
  var keyCount = 0;

  void put(T instance) {
    _instance = instance;
  }

  T? get() {
    return keyCount < _key.limitUsingCount ? null : _instance;
  }

  StrongBox({
    required T instance,
    required KeyType key,
  }) : _instance = instance, _key = key;
}