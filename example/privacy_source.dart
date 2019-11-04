extension _Silly on int {
  int get addTwo => this + 2;
}

extension AlsoSilly on String {
  String get firstChar => this.substring(0, 1);
}

void main() {
  print(3.addTwo);
  print("Filip".firstChar);
}
