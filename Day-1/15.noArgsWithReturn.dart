// Using List =>

// List<double> Employee() {
//   double salary = 100000;
//   double bonus = 10000;
//   double tax = 10;
//   double salaryBeforeTax = salary + bonus;
//   double salaryAfterTax =salaryBeforeTax - (salaryBeforeTax * tax) / 100;
//   return [salaryBeforeTax, salaryAfterTax];
// }

// Using Map =>

Map<String, double> Employee() {
  double salary = 100000;
  double bonus = 10000;
  double tax = 10;
  double salaryBeforeTax = salary + bonus;
  double salaryAfterTax = salaryBeforeTax - (salaryBeforeTax * tax) / 100;
  return {
    'salaryBeforeTax': salaryBeforeTax,
    'salaryAfterTax': salaryAfterTax,
  };
}

void main() {
  // Useful when you want to print both ' key ' as will as ' value '....!
  // Map<String, double> salary = Employee();
  // print(salary);

  var employee = Employee();
  print("Salary Before Taxes: ${employee['salaryBeforeTax']}");
  print("Salary After Taxes: ${employee['salaryAfterTax']}");
}
