T getFirstElement<T>(List<T> list) {
  print(list);
  return list[0];
}

void main() {
  print(getFirstElement<int>([10, 20, 30, 40]));
  print(getFirstElement<String>(['a', 'b', 'c', 'd']));
}
