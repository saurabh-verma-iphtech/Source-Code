// Similar to 'Arrays' in other programming languages
// Used to representing a collection of Object.
// It is an ordered group of Objects.
// The core libraries in Dart are responsible for the existence of the List class, its creation, and manipulation..!

// Types of List :-
// 1.Fixed/Static Length List
// 2.Growable/Dynamic Length List

// 1.Fixed/Static Length List =>
// Syntax:- List ? list_Name = List.filled(number of elements, E, growanle:boolean);\
// Example:- List<int> list_Name = List.filled(5, 0, false);

// growable : false =>

// Initially filled with "null"....!

void main() {
  List? list = List.filled(5, null, growable: false);
  list[0] = 'Learing';
  list[1] = 'Dart';
  list[2] = 'for';
  list[3] = 'Beginning';
  list[4] = 'Flutter';
  print(list);

// growable : true =>
  List? list1 = List.filled(3, 0, growable: true);
  print('It will grow till index 2 : $list1');

// Initially filled with "Dart"...!
  List<String> list3 = List.filled(4, 'Dart', growable: true);
  print('It will grow till index 3 : $list3');

// Adding a value to growable list =>
  List<int> intList = List.filled(4, 0, growable: true);
  intList.add(1);
  print(intList);

  // Adding multiple values to the growable list =>
  intList.addAll([5, 6, 7, 8]);

  // Adding a value at a specifix index -:
  intList.insert(1, 10);
  print(intList);

  // Adding multiple values at a specific index -:
  intList.insertAll(3, [100, 200, 300]);
  print(intList);

  // Creating a 2-Dimensional List
  int a = 3, b = 3;
  var twoDim = List.generate(a, (i) => List.filled(b, 0));
  print(twoDim);

  for (int i = 0; i < 3; ++i) {
    for (int j = 0; j < 3; ++j) {
      twoDim[i][j] = i + j;
    }
  }

  print(twoDim);

  // Another Way....!
  var twoDime = List.generate(
      3, (i) => List.generate(3, (j) => List.generate(3, (k) => i + j + k)));
  print(twoDime);
}
