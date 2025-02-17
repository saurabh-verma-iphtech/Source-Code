void main() {
  // 1. Spread (...) operator-
  List<int> rollNo = [10, 12, 15, 20, 33];
  List<int> marks = [88, 86, 70, 92, 81];
  List<int> combinedList = [...rollNo, ...marks];
  print(combinedList);

  Set<String> name = {'Mohan', 'Alok', 'Avi'};
  Set<String> subject = {'Maths', 'Science', 'English'};
  Set<String> combinedSet = {...name, ...subject};
  print(combinedSet);

  Map<String, int> map1 = {'Z': 1, 'Y': 2, 'X': 3};
  Map<String, int> map2 = {'A': 4, 'B': 5, 'C': 6};
  Map<String, int> combinedMap = {...map1, ...map2};
  print(combinedMap);

  // 2. Null Aware Spread (...?) operator-
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int>? list2 = null;
  // List<int> combinedList2 = [...list1, ...list2]; => It will be throw an error
  List<int> combinedList2 = [...list1, ...?list2];
  print(combinedList2);

  Set<String>? name1 = null;
  Set<String>? subject1 = null;
  Set<String> combinedSet0 = {...?name1, ...?subject1};
  print(combinedSet0);
  
}
