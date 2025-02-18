// Represents the result of an asynchronous operation.
Future<String> fetchUser() {
  return Future.delayed(Duration(seconds: 2), () => "Saurabh's data loaded");
}

void main() {
  print("Loading user...");

  fetchUser().then((data) {
    print(data);
  }).catchError((error) {
    print("Error: $error");
  });

  print("Request sent!");
}
