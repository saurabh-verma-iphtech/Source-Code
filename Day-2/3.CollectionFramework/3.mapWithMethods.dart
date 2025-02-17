// Maps are dictionary-like data types that exist in key-value form (known as lock-key)
// Maps are very flexible and can mutate their size based on the requirements.
// All locks (keys) need to be unique inside a map data type.

// We can declare Map in two ways:
// 1. Using Map Literals
// 2. Using Map Constructors

// 1. Map Literals =>
// var map_name = { key1 : value1, key2 : value2, ..., key n : value n }
void main() {
  var map = {
    'pos1': 'Flutter',
    'pos2': 'Development',
    'pos3': 'Using',
    'pos4': 'Android Studio'
  };

  print(map);

  //Printing a Specific value using key.....!
  print('Printing a Specific value: $map[pos3]');

  var map1 = {'pos1': 'learning' 'dart' 'for' 'flutter'};
  print(map1);
  var map2 = {'learning', 'dart', 'for', 'flutter'};
  print(map2);

  // Inserting a new value....!
  map['pos5'] = 'Dart';
  print(map);

// 2. Map Constructors
// Syntex : var map_name = new Map();
// Assinging value and key inside Map : mapName[key] = value;
  var map3 = new Map();
  map3['pos1'] = 'Flutter';
  map3['pos2'] = 'Development';
  map3['pos3'] = 'Using';
  map3['pos4'] = 'Android Studio';
  print(map3);

  // Assigning same key to different element:
  print("Assinging same key to different elements: ");
  var map5 = new Map();
  map5[0] = 'Dart';
  map5[0] = 'Development';
  map5[0] = 'Using';
  map5[0] = 'Android Studio';
  print(map5);    // {0: Android Studio} =>Other values will be simply ignored....!
}
