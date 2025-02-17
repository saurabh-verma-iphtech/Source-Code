class Name<T> {
  T value;

  Name(this.value);

  void display() {
    print("Value $value");
  }
}

void main() {
  Name<int> rollNo = Name(101);
  rollNo.display();
  Name<String> name = Name<String>("John");
  name.display();
}
