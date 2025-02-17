void student(String name, [int rollNo = 101]) {
  print("Student Name: $name");
  print("Student Roll No: $rollNo");
}

// We can specify both paramters as default parameter
void cricketer([String name = "Kiran Bedi", int age = 54]) {
  print("Cricketer Name: $name");
  print("Cricketer Age: $age");
}

void main() {
  student("Rakesh"); // Default value will be print.
  student("Rahul", 102); // Given argument will be print.

  cricketer();  //It will print both default values
  cricketer("Rahul"); // It will print only name
  // cricketer(30); // It will throw an error, optional positional parameter must be provided in order.
  cricketer("Rakesh",30); // It will print both specified name as well as
}
