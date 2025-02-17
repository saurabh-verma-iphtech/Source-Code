class Pair<K, V> {
  K key;
  V value;
  Pair(this.key, this.value);

  void display() {
    print("Key: $key, Value: $value");
  }
}

void main() {
  Pair<int, String> p1 = Pair(1, "One");
  p1.display();
  Pair<String, double> p2 = Pair("PI", 3.14);
  p2.display();
}
