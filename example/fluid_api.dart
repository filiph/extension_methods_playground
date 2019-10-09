import 'package:extension_methods/some_api.dart';

extension on Group {
  void removeYoungest() {
    var sorted = people.toList()
      ..sort((a, b) => a.dayOfBirth.compareTo(b.dayOfBirth));
    var youngest = sorted.last;
    people.remove(youngest);
  }

  void show() => print(this);
}

void main() {
  var team = getTeam();

  // Instead of something like removeYoungest(team) and then print(team),
  // we can now do the following:
  team
    ..removeYoungest()
    ..show();
}
