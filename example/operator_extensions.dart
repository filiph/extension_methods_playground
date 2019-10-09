import 'package:extension_methods/some_api.dart';

extension PersonAddition on Person {
  Group operator +(Person other) => Group({this, other});
}

extension GroupAddition on Group {
  Group operator +(Person person) => Group({...people, person});
  bool operator >(Group other) => people.length > other.people.length;
}

void main() {
  var team = jean + betty;
  team += kay;
  print(team); // Jean Bartik, Betty Holberton, Kay Antonelli

  var otherTeam = betty + marlyn;
  print(team > otherTeam); // true
}
