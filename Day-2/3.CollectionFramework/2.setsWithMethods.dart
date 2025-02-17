// Special case in List where all the inputs are unique
// It can also be interpreted as an unordered array with unique inputs.
// The sets are declared by the use of a set keyword.

void main() {
  // Declaration of Set =>
  var demo = <String>{'Coder', 'for', 'Coding'};
  // Set<String> demo1={'Coder', 'for', 'Coding'};

  print(demo);

// ########################## Comparing List and Set ########################
// Declaration of List =>
  var demo1 = ['Coder', 'for', 'Coder'];
  var demo2 = <String>{'Coder', 'for', 'Coder'};
  // Set<String> demo2 = {'Coder', 'for', 'Coder'};
  print(demo1); // [Coder, for, Coder]
  print(demo2); // {Coder, for}
// We can see that repeated value was simply ignored in the case of the set.

// Adding element in Set....!
  demo.add('Developer');
  print(demo);
// Adding Multiple element in Set....!
  var newSet = {'Saurabh', 'Kumar', 'Verma'};
  demo.addAll(newSet);
  print(demo);

// Getting element at specified index....!
  print(demo.elementAt(3));

// Counting the length of the Set.....!
  print(demo.length);

  // Finding the element in the Set.....!
  print(demo.contains("Coder"));

  // Removing an element from the list....!
  print(demo.remove('Kumar'));
  print(demo); // {Coder, for, Coding, Developer, Saurabh, Verma}

  // Using for-each in set =>
  demo.forEach((element) {
    if (element == "Saurabh") {
      print("Found");
    } else {
      print("Not Found");
    }
  });

  // Deleting Elements from Set.....!
  demo.clear();
  print(demo);

  // Converting Set to List in Dart: "to List"

// Adding multiple values of two sets in a single set using .addAll() function....!
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {4, 5, 6};
  set1.addAll(set2);
  print(set1);

  print(" ");
  print(" ");

  // Converting Set to List......!
  Set<String> str1 = {'coder', 'with', 'coding', 'working', 'with', 'coding'};
  List<String> list = str1.toList();
  print(list);
}
