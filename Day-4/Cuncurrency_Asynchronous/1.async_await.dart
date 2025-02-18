Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating network delay
  return "Data received!";
}

void main() async {
  print("Fetching data...");
  String data = await fetchData();
  print(data);
}
// Here, await fetchData(); waits for fetchData() to complete before printing the result.