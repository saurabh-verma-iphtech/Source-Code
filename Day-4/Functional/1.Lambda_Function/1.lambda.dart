void main() {
  // Traditional function
  int add(int a, int b) {
    return a + b;
  }

  // Lambda function (shorter version)
  int sum(int a, int b) => a + b;

  print(add(5, 3)); // Output: 8
  print(sum(5, 3)); // Output: 8

  // Assigning a Lambda to a Variable
  var multiply = (int a, int b) => a * b;
  print(multiply(8, 5));
}
