class BasicOperators {
  void expand(Stream<int> stream) {
    stream
        .expand((data) => [data, data * 10, 123, 321])
        .listen((item) => print(item));
  }

  void map(Stream<int> stream) {
    // stream.map((i) => i * 10).listen((item) {
    //   print(item);
    // });

    stream.map((i) {
      if (i % 2 == 0) {
        return i * 2;
      } else {
        return i - 1;
      }
    }).listen((item) => print(item));
  }

  void skip(Stream<int> stream) {
    stream.skip(4).listen((i) => print(i));
  }

  void skipWhile(Stream<int> stream) {
    stream.skipWhile((i) => i < 7).listen((item) => print(item));
  }

  void take(Stream<int> stream) {
    stream.take(4).listen((i) => print(i));
  }

  void takeWhile(Stream<int> stream) {
    stream.takeWhile((i) => i % 2 != 0).listen((item) => print(item));
  }

  void where(Stream<int> stream) {}

  void distinct(Stream<int> stream) {}

  //...
}
