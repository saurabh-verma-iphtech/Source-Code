void main() {
  // Using 'if' inside Collections:
  bool addExtra = true; //If addExtra is false, the list remains same.
  List<int> list = [
    10,
    20,
    30,
    40,
    if (addExtra) 50,
  ];
  print(list);

  bool strExtra = false;
  Set<String> set = {"saurabh", "kumar", if (strExtra) 'verma'};
  print(set);

  // Using 'for' inside Collections:
  List<int> baseNumbers = [
    1,
    2,
    3,
    4,
  ];
  List<int> list2 = [0, for(int num in baseNumbers) num*2,21,31];
  print(list2);


  // Using ?? Operator(Null Aware): provides a default value if the left-hand side is null.
  String? name;
  print(name ?? "Guest");

  name = "Saurabh";
  print(name ?? "Guest");
}
