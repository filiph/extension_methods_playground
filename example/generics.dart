extension on List<int> {
  int get sum => fold(0, (a, b) => a + b);
}

void main() {
  print([1, 2, 3].sum);

  // print(["a", "b"].sum);
}
