class MetricLength {
  final int meters;

  const MetricLength(this.meters);

  MetricLength operator +(MetricLength other) =>
      MetricLength(meters + other.meters);
}

extension MetricLengthGetters on int {
  MetricLength get m => MetricLength(this);
  MetricLength get km => MetricLength(this * 1000);
}

void main() {
  var a = 50.m;
  var b = 12.km;
  var c = a + b;
  print(c.meters); // 12050
}
