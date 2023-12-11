enum KeyType {
  padlock(limitUsingCount: 1024),
  button(limitUsingCount: 10000),
  dial(limitUsingCount: 30000),
  finger(limitUsingCount: 100000);

  final int limitUsingCount;

  const KeyType({
    required this.limitUsingCount
  });
}