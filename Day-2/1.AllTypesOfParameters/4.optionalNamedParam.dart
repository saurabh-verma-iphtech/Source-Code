void optionalNamedParam({String name = "Saurabh", int age = 24}) {
  print("Name: $name, Age: $age");
}


void optionalNamedParam1(String name,{int age= 20}){
  print("Name: $name, Age: $age");
}

void main() {
  optionalNamedParam();   // It will print default values.
  optionalNamedParam(name:"Ramananda"); // It will print provided value and default value.
  optionalNamedParam(name:"Roshan", age: 25); // It will print provided values.
  optionalNamedParam1("Roshan", age: 25); // It will
}
