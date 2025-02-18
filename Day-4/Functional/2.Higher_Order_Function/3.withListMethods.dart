void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using where (HOF) to filter even numbers
  List<int> evens = numbers.where((n) => n % 2 == 0).toList();

  print(evens); // Output: [2, 4]
}
