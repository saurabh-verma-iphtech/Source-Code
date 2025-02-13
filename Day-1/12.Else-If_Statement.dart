void main() {
  int? salary;
  salary = 25;
  if (salary < 500000) {
    print("No tax you have to pay.");
  }else if(salary>=500000){
    print("You have to pay tax.");
  }else{
    print("Invalid salary");
  }
}
