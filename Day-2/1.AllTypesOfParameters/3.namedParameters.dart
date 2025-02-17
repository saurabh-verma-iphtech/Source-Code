void namedParamFunction({required String name, required int age}) {
  print("Name: $name, Age: $age");
}

void name({required String name="rabina", required int age=24}){
  print("Name: $name, Age: $age");
}
void main() {
  namedParamFunction(name: "Saurabh", age: 30);
  // namedParamFunction(name: "name"); -- Parameters must be specified.
}
