class BasicOperators {
  void expand(Stream<int> stream) {
    stream
        .expand((data) => [data, data * 10, 123, 321])
        .listen((item) => print(item));
  }

  void map(Stream<int> stream) {
    stream.map((i) => i * 10).listen((item) {
      print(item);
    });
  }
}
