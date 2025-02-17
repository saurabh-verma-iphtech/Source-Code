// finally block always executes, whether an exception occurs or not.
void main() {
  try {
    int result = 10 ~/ 2;
    print(result);
  } catch (e) {
    print("Exception: $e");
  } finally {
    print("Execution finished.");
  }
}
