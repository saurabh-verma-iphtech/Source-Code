void main() {
  List<int> num = [10, 20, 30];
  List<String> name = ['Dart', 'Programming'];

  void addToList<T>(List<T> list, T item) {
    list.add(item);
  }

  addToList(num, 50);
  addToList(num, 60);
  addToList(name, 'Saurabh');

  print(num);
  print(name);
}
