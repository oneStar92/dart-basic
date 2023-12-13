Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 10));
  return 'ok';
}

void main() {
  timeoutFuture()
      .timeout(Duration(seconds: 5), onTimeout: () => 'timeout')
      .then(print);
}