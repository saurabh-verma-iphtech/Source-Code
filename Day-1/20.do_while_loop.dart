import 'dart:io';

void main() {
  int? n;
  stdout.write("Enter the number for their table: ");
  n = int.parse(stdin.readLineSync()!);
  int i = 1;
  do {
    print("$n * $i : ${n * i}");
    i++;
  } while (i <= 10);
}
