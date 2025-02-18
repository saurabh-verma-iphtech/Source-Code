Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulate delay
    yield i; // Emit a value
  }
}


void main() async {
  await for (int num in countStream()) {
    print(num);
  }
}
// # async* and yield create an async generator that continuously emits values.