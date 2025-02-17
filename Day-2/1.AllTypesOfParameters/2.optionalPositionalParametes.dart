void optionalPositionalParam(String name, [int? age]) {
  print("Name : $name and their Age is: $age");
}

// Both can Store null values....
void optionalPositionalParam1([String? name, int? age]) {
  print("Name : $name and their Age is: $age");
}

void main() {
  // positional parameter
  optionalPositionalParam("Mukesh");
  optionalPositionalParam("Saurabh", 25);

  optionalPositionalParam1();
}
