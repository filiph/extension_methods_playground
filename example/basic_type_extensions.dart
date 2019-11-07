import 'dart:math' show pi;

extension Silly on String {
  void scream() => print(toUpperCase());
}

extension Sillier on int {
  void times(Function f) {
    for (int i = 0; i < this; i++) {
      f();
    }
  }
}

extension Silliest on Object {
  int nah() => hashCode + 42;
  String stop(String x) => toString() + x;
  Type please() => runtimeType;
  bool notAgain(Object other) => this != other;
  // ...
}

void main() {
  var warning = "Extensions are here!";
  warning.scream(); // prints "EXTENSIONS ARE HERE!"

  // Extension methods ¯\_(ツ)_/¯
  5.times(() => print('hello'));

  print(null.stop('!!!')); // prints null!!!

  // Without extension methods:
  print('Extension methods are here!'.toUpperCase());

  for (var i = 0; i < 3; i++) {
    print('Hurray!');
  }

  print('π = $pi');
}
