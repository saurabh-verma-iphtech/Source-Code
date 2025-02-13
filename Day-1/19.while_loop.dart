import 'dart:io';

void main() {
  int? n;
  stdout.write("Enter the number to print their table: ");
  n = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i < 10) {
    print("$n * $i = ${n * i}");
    i++;
  }
}
