void main() {
  String? name;

  print(name?.length);
  if (name == null) {
    print("Value is null");
  } else {
    print("Value is not null.");
  }
}
