// 'assert' function used for debugging purposes...!
// if condition is true program continues execution.
// if condition is false program throws an error 'AssertionError'.
void main() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  print(1 is int);
  print(1.0 is int);
  print(1 == 1.0);

  // int to String....
  print(2.toString());

  // String to int....
  print(int.parse('2'));

  print(double.infinity is int);
}
