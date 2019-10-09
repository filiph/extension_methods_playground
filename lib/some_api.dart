/// Imagine that this type is coming from a different package, so we can't
/// directly change it.
class Person {
  final String name;
  final DateTime dayOfBirth;

  const Person(this.name, this.dayOfBirth);
}

/// This class is also outside our influence.
class Group {
  final Set<Person> people;

  const Group(this.people);

  @override
  String toString() => people.map((p) => p.name).join(', ');
}

/// We could extend the classes, but that doesn't help when we are not
/// the ones constructing the objects.
Group getTeam() => Group({jean, betty, kay, marlyn});

final jean = Person("Jean Bartik", DateTime(1924, 12, 27));
final betty = Person("Betty Holberton", DateTime(1917, 3, 7));
final kay = Person("Kay Antonelli", DateTime(1921, 2, 12));
final marlyn = Person("Marlyn Meltzer", DateTime(1922));
