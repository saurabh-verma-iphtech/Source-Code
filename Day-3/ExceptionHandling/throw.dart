// throw keyword used to make 'Custom Exception'.
void checkAge(int age) {
  if (age < 18) {
    throw Exception("Age must be 18 or above.");
  } else {
    print("Access granted.");
  }
}

void main() {
  try {
    checkAge(16);
  } catch (e) {
    print("Caught Exception: $e");
  }
}
