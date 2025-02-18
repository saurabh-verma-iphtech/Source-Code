Function createMultiplier(int factor) {
  return (int number) => number * factor;
}

void main() {
  var doubleIt = createMultiplier(2);
  var tripleIt = createMultiplier(3);

  print(doubleIt(5)); // Output: 10
  print(tripleIt(5)); // Output: 15
}
