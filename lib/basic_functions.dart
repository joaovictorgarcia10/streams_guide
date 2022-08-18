class BasicFunctions {
  void listen(Stream<int> stream) {
// stream.listen((event) {
//   print(event);
// });

// getNumbersException().listen((event) {
//   print(event);ßß
// }).onError((error) {
//   print('an error occured');
// });

    var sum = 0;

    stream.listen((event) {
      sum += event;
      print(event);
    }).onDone(() {
      print("The sum is: $sum");
    });
  }

  ///
  void awaitFor(Stream<int> stream) async {
    var sum = 0;

    await for (var number in stream) {
      sum += number;
    }

    print(sum);
  }

  ///
  Future<void> isEmpty(Stream<int> stream) async {
    if (await stream.isEmpty) {
      print('stream is empty');
    } else {
      print('stream is not empty');
    }
  }

  ///
  Future<void> first(Stream<int> stream) async {
    var first = await stream.first;
    print(first);
  }

  ///
  Future<void> last(Stream<int> stream) async {
    var last = await stream.last;
    print(last);
  }

  ///
  Future<void> length(Stream<int> stream) async {
    print(await stream.length);
  }

  ///
  Future<void> single(Stream<int> stream) async {
    print(await stream.single);
  }

  ///
  Future<void> any(Stream<int> stream) async {
    if (await stream.any((element) => element == 3)) {
      print('there is a number equal to 3');
    } else {
      print('there is not a number equal to 3');
    }
  }

  ///
  Future<void> contains(Stream<int> stream) async {
    if (await stream.contains(2)) {
      print('contains a number equal to 2');
    } else {
      print('does not contain a number equal to 2');
    }
  }

  ///...
  /// elementAt();
  /// firstWhere();
  /// join();
  /// lastWhere();
  /// singleWhere()
}
