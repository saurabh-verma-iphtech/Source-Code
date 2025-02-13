import 'dart:mirrors';

void main() {
// SYMBOl--: an immutable identifier that represents the name of a variable, function, or library.
//Symbols are mainly used in reflection (working with metadata and dynamic programming).

  // Creating Symbol...
  Symbol s1 = Symbol("Hello");
  Symbol s2 = #Hello;
  print(s1);
  print(s2);

  // Converting Symbol to String
  print(MirrorSystem.getName(s1));

}
