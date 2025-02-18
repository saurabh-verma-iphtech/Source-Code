Future<String> fetchDataWithError() async {
  await Future.delayed(Duration(seconds: 2));
  throw "Error fetching data!";
}


void main() async {
  try {
    String result = await fetchDataWithError();
    print(result);
  } catch (e) {
    print("Caught error: $e");
  }
}
// try-catch is used for error handling in async/await.
