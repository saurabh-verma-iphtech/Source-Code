// It is a shorthand for writing functions called Arrow syntax
// also known as fat arrow (=>) function. This makes code concise and readable.
// It is used to define small functions, especially when used as event handlers.
// Instead of using {} and return, we can use the => symbol for single-expression functions.
// Only works with single expressions (no multiple statements or loops).
// Automatically returns the result of the expression.

// Without return type and argument...
void printName() => print("Hello, Saurabh !");

// Arrow Function with return type and argument....
int printSquare(int a) => a * a;

List<String> list = ["Apple", "Banana", "Mango", "Grapes"];
var uppercaseList = list.map((item) => item.toUpperCase()).toList();

// Using in a class==>
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Regular method
  String getInfo() {
    return "Name: $name, Age: $age";
  }

  // Arrow method
  String get info => "Name: $name, Age: $age";
}

void main() {
  printName();

// Arrow Function with return type....
  printSquare(10);

  Person p = Person("Alibaba", 25);
  print(p.getInfo());
  print(p.info);


  // Another Example
  uppercaseList.forEach((item) => print('$item: ${item.length}'));

}
