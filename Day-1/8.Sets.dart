void main() {
  Set<int> intSet = {};
  // print(intSet);
  Set<String> strSet = Set();
  // print(strSet);

// add()
  intSet.add(12);

// addAll()
  intSet.addAll({1, 2, 3, 4, 5, 6});
  print("Adding Integer type values in Set: $intSet");

  strSet.addAll({"dart", 'Programming', 'Language'});
  print("Adding String values in the Set: $strSet");

  // remove(element)
  intSet.remove(3);
  print("After removing 3 from the Set: $intSet");

  // removeWhere()
  intSet.removeWhere((element) => element % 2 == 0);
  print("After removing even numbers from the Set: $intSet");

  // clear
  intSet.clear();
  print("After clearing the Set: $intSet");

  // Checking element in a Set--:
  // contains(element)
  print("Does the Set contain 5? ${intSet.contains(5)}");

  // length
  print("Length of the Set: ${intSet.length}");

  // isEmpty
  print("Is the Set empty? ${intSet.isEmpty}");

  // isNotEmpty
  print("Is the Set not empty? ${intSet.isNotEmpty}");

  intSet.addAll({1, 2, 3, 4, 5});

  // Set Operations--:
  // union()(Set2)
  Set<int> unionSet = intSet.union({
    1,
    2,
    3,
  });
  print("Union of the Set: $unionSet");

  // intersection(Set2)
  Set<int> intersectionSet = intSet.intersection({2, 1});
  print("Intersection of the Set: $intersectionSet");

  // difference(Set2)
  Set<int> differenceSet = intSet.difference({2, 1});
  print("Difference of the Set: $differenceSet");

  // Iterating over a Set--:
  // forEach()
  intSet.forEach((element) => print("Printing using for-each loop: $element"));

  // Using for-in loop
  for (var element in intSet) {
    print("Printing using for-in loop: $element");
  }

  // Sorting a Set
  Set<int> intSet1 = {5, 2, 8, 1, 9};
  List<int> sortedList = intSet1.toList()..sort();
  print("Sorted Set: $sortedList");

  // Converting between Sets and Lists:
  // Lists to Sets
  List<int> list = [1, 2, 3, 4, 5];
  Set<int> setFromList = list.toSet();
  print("Set from List: $setFromList");

  // Sets to Lists
  List<int> listFromSet = setFromList.toList();
  print("List from Set: $listFromSet");

}
