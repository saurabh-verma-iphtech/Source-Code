import 'dart:io';

void main() {
  int? n;
  stdout.write("Enter the number for their table: ");
  n = int.parse(stdin.readLineSync()!);
  var forInExample = [1, 2, 3, 4, 5, 6, 7,8,9,10];
  for (int i in forInExample) {
    print("$n * $i = ${n * i}");
  }
}
