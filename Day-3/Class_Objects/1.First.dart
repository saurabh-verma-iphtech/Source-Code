class Student {
  int rollNo;
  String Name;
  Student(this.rollNo, this.Name);
  void display() {
    print("Roll No: $rollNo");
    print("Name: $Name");
  }
}

void main() {
  Student s1 = Student(1, "Saurabh");
  s1.display();
}
