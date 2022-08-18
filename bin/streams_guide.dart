import 'package:streams_guide/basic_functions.dart';
import 'package:streams_guide/basic_operators.dart';

/// Stream Functions
Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumberSingleValue() async* {
  for (var i = 0; i < 1; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumbersException() async* {
  for (var i = 0; i < 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));

    if (i == 3) {
      throw Exception();
    }
  }
}

void main() async {
  /// Basic Dart Streams Functions
  final basicFunctions = BasicFunctions();

  // basicFunctions.listen(getNumbers());
  // basicFunctions.awaitFor(getNumbers());
  // basicFunctions.isEmpty(getNumbers());
  // basicFunctions.first(getNumbers());
  // basicFunctions.last(getNumbers());
  // basicFunctions.length(getNumbers());
  // basicFunctions.single(getNumberSingleValue());
  // basicFunctions.any(getNumbers());
  //basicFunctions.contains(getNumbers());

  /// Basic Dart Streams Operators
  final operators = BasicOperators();

  //operators.expand(getNumbers());
  // operators.map(getNumbers());
  // operators.skip(getNumbers());
  // operators.skipWhile(getNumbers());
  // operators.take(getNumbers());
  operators.takeWhile(getNumbers());
}
