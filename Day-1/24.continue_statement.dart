import 'dart:io';

void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 6) {
      continue;
    }
    stdout.write("$i ");
  }
}
