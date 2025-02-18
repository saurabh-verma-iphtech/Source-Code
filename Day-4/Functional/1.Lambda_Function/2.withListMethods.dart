void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  // Using lambda with map function
  List<int> squares = numbers.map((n) => n * n).toList();

  print(squares); // Output: [1, 4, 9, 16, 25]
}
