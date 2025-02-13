void main() {
  // 1.Fixed Length List:
  List<int> intList = List.filled(5, 1, growable: false);
  List<String> strList = List.filled(3, "Dart");
  print(intList);
  print(strList);
  // We can update the value of a List but can not add or remove the elements.
  intList[0] = 10;
  print("Upadated List: $intList");

  // intList.add(10); It will cause an error due to fixed length of the List and its not growable.

  // 2.Growable List:
  // # Declaring Empty Growable List:
  List<int> intList2 = [];
  print("Empty List (First Way): $intList2");
  // # Adding Elements to Growable List:
  intList2.add(200);
  intList2.add(300);
  intList2.add(100);
  print("List after adding elements: $intList2");

  // Another way to Declaring Empty Growable List:
  List<int> intList3 = List.empty(growable: true);
  print("Empty List using Methods (Second Way): $intList3");

  // Adding elements to the List:
  intList3.add(10);
  intList3.add(20);
  intList3.add(31);
  print("List after adding elements: $intList3");

  // # Removing Elements from Growable List:
  intList3.remove(10);
  print("Performing Remove operation by specific value: $intList3");

  intList3.removeAt(0);
  print("Performing RemoveAt operation by index: $intList3");

  // Adding multiple values in a List:
  intList3.addAll([60, 71, 80, 99]);
  print("List after adding multiple values once:$intList3");

  // insertAt(index,value);
  intList3.insert(0, 100);
  print("List after inserting value at specific index: $intList3");

  // insertAll(index,values);
  intList3.insertAll(0, [201, 300, 401]);
  print("List after inserting multiple values at specific index: $intList3");

  // length
  print("Length of the List: ${intList3.length}");

  // removeAt()
  intList3.removeAt(0);
  print("List after removing value at specific index: $intList3");

  // removeLast()
  intList3.removeLast();
  print("List after removing last value: $intList3");

  // removeRange()
  intList3.removeRange(0, 2);
  print("List after removing values in a range: $intList3");

  // removeWhere()
  intList3.removeWhere((value) => value % 2 == 0);
  print("List after removing values based on condition: $intList3");

// Accessing Elements:-
  // elementAt()
  print("Value at index 0: ${intList3.elementAt(0)}");

  // first
  print("First element of the List: ${intList3.first}");

  // last
  print("Last element of the List: ${intList3.last}");

  // isEmpty
  print("Is List empty? ${intList3.isEmpty}");

  // isNotEmpty
  print("Is List not empty? ${intList3.isNotEmpty}");

// Searching in a List:-
// contains()
  print("Does List contain value 100? ${intList3.contains(100)}");

// indexOf(element)
  print("Index of value 31 in List: ${intList3.indexOf(31)}");

// lastIndexOf(element)
  print("Last index of value 31 in List: ${intList3.lastIndexOf(31)}");

// firstWhere(condition)
  print(
      "First element in List that satisfies condition: ${intList3.firstWhere((value) => value > 35)}");

// lastWhere(condition)
  print(
      "Last element in List that satisfies condition: ${intList3.lastWhere((value) => value > 35)}");

// Sorting and Reversing
// sort()
  intList2.sort();
  print("Sorted List: $intList2");

// reversed
print("Reversed List: ${intList2.reversed}");

// shuffle()-Random order
intList2.shuffle();
print("List after shuffling: $intList2");


// Other Usefull Methods:
// join('seperator')
print("Elements of List joined by hyphne: ${intList2.join('-')}");


}
