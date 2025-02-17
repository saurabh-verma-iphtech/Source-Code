void main() {
  try {
    int res = 10 ~/ 0;
    print(res);
  } catch (e) {
    print(e);
  }
}
