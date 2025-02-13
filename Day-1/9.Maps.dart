void main() {
  // 1. Declaration Using Map Literals:
  var map = {'name': 'Saurabh', 'age': 23};
  print(map);

  Map<String, int> myMap = {'apple': 10, 'banana': 20, 'cherry': 30};
  print(myMap);

  // If we want mixed-type keys: Map<dynamic,dynamic> <-Explicit type Annotations
  Map<String, dynamic> mixType = {
    'category': 'Fruits', // Renamed 'list' to 'category' for clarity
    'apples': 100,
    'bananas': 60,
    'lichi': 99
  };
  print(mixType);

  // 2. Using Map Constructors:
  Map<String, int> map1 = Map();
  map1['apple'] = 10;
  map1['banana'] = 20;
  map1['cherry'] = 30;
  print(map1);

  // length
  print(map1.length);

  // isEmpty
  print(map1.isEmpty);

  // isNotEmpty
  print(map1.isNotEmpty);

  // Access and Modify Data--: Updating and Adding
  // map[key] = value
  map1['apple'] = 100;
  map1['grapes'] = 222;
  print(map1);

  // containsKey(key)
  print(map1.containsKey('apple'));

  // containsValue(value)
  print(map1.containsValue(100));

  // putIfAbsent(key, () => value)
  map1.putIfAbsent('mango', () => 1000);
  print(map1);

  // Get all keys and values
  print("Keys of the Map: ${map1.keys}");
  print("Values of the Map: ${map1.values}");

  // Looping through a Map
  map1.forEach((key, value) {
    print('$key: $value');
  });

  // remove(key)
  map1.remove('apple');
  print(map1);

  //clear
  map1.clear();
  print(map1);

  // Creating a Map from Iterables--:
  List<String> keys = ['apple', 'banana', 'cherry'];
  List<int> values = [10, 20, 30];

  Map<String, int> newMap = Map.fromIterables(keys, values);
  print(newMap);


}
