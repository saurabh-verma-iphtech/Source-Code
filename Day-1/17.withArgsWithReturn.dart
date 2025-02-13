// Using List =>

// List<double> Employee(double salary, double bonus,double tax) {
//   double salary = 100000;
//   double bonus = 10000;
//   double tax = 10;
//   double salaryBeforeTax = salary + bonus;
//   double salaryAfterTax =salaryBeforeTax - (salaryBeforeTax * tax) / 100;
//   return [salaryBeforeTax, salaryAfterTax];
// }

// Using Map =>
Map<String, double> Employee(double salary, double bonus,double tax) {
 
  double salaryBeforeTax = salary + bonus;
  double salaryAfterTax = salaryBeforeTax - (salaryBeforeTax * tax) / 100;
  return {
    'salaryBeforeTax': salaryBeforeTax,
    'salaryAfterTax': salaryAfterTax,
  };
}

void main() {

  double salary = 100000;
  double bonus = 10000;
  double tax = 10;

  // To print Map Values.....!
  // Useful when you want to print both ' key ' as will as ' value '....!
  Map<String, double> employee = Employee(salary,bonus,tax);
  print(employee);

  // var employee = Employee(salary,bonus,tax);
  // print("Salary Before Taxes: ${employee['salaryBeforeTax']}");
  // print("Salary After Taxes: ${employee['salaryAfterTax']}");
}
