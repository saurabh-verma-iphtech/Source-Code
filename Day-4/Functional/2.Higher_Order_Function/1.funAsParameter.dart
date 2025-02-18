void main() {
  void printMessage(String message) {
    print("Message: $message");
  }

  // Higher-order function
  void executeFunction(void Function(String) func, String value) {
    func(value); // Calls the passed function
  }

  executeFunction(printMessage, "Hello, Dart!");
  // Output: Message: Hello, Dart!
}
