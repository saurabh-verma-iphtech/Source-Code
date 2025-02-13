void main() {
  // Record ---: An immutable, lightweight DS that allows to group multiple values
  // without creating a list or class.
  // It is a collection of key-value pairs.
  // It is an iterable, so it can be used in a for loop.
  // It is a mutable DS, so it can be modified after it is created.
  // It is a DS that can be used to implement a list, map, and set.
  // In this Records are fixed-sized, heterogeneous, and typed.

  // ###########################################################
  // Creating a Record
  var record = ('Saurabh', 23, true);
  print(record);

  // ###########################################################
  // To Access Individual records we have to use '.$1....'.
  print(record.$1);
  print(record.$3);

  // Named Fields in Records
  var record1 = (name: 'Saurabh', age: 23, isEmployed: true);
  print(record1.isEmployed);
  print(record1.name);

  // Returning Multiple Values from a Function
  (int, String) student() {
    return (111, 'Saurabh');
  }

  var s1 = student();
  print(s1.$1);
  print(s1.$2);

// Combining Named and Positional Fields
  var data = ('john', city: 'london', isStable: true);
  print(data.$1); // Output: Dart
  print(data.city); // Output: 3.0
  print(data.isStable); // Output: true


}
