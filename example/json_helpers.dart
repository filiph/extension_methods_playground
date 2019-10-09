extension _MyJsonHelper on Map<String, Object> {
  int get id => this['id'];

  String get name => this['name'];
}

main() {
  var json = {
    'id': 100,
    'name': 'Dash',
  };

  print("${json.name}'s ID is ${json.id}."); // Dash's ID is 100.
}
