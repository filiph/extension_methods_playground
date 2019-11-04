import 'package:meta/meta.dart';
import 'package:nasa_exoplanets/nasa_exoplanets.dart';

extension BetterExoplanet on Exoplanet {
  static Exoplanet tatooine = Exoplanet(name: 'Tatooine');

  double get temperatureInCelsius => kelvinToCelsius(temperature);

  List<Exoplanet> operator +(Exoplanet other) => [this, other];

  bool get isHabitable => checkHabitable(this);

  Duration timeToReachBy(Spaceship spaceship) =>
      computeTimeToReach(this, spaceship);
}

void main() async {
  var exoplanets = await fetchExoplanets();

  var planet = pickMostHabitable(exoplanets);

  print(kelvinToCelsius(planet.temperature));

  if (checkHabitable(planet)) {
    print("Yay!");
  }

  if (computeTimeToReach(planet, mySpaceship) > averageLifetime) {
    print('😔');
  }

  // With extension methods.

  print(planet.temperatureInCelsius);

  if (planet.isHabitable) {
    print("Yay!");
  }

  if (planet.timeToReachBy(mySpaceship) > averageLifetime) {
    print('😔');
  }
}

class MyBetterExoplanet extends Exoplanet {
  bool get isHabitable => checkHabitable(this);

  // ...
}

class ExoplanetWrapper {
  Exoplanet wrapped;

  bool get isHabitable => checkHabitable(wrapped);

  // ...
}

const averageLifetime = Duration(days: 365 * 90);

Duration computeTimeToReach(Exoplanet planet, Spaceship spaceship) {
  var distance = Distance.fromParsecs(planet.distance);
  return spaceship.spaceflightCapability.timeToTraverse(distance);
}

bool checkHabitable(Exoplanet planet) {
  // TODO: actually implement
  return true;
}

Exoplanet pickMostHabitable(List<Exoplanet> planets) {
  // TODO: actually implement.
  return planets.last;
}

double kelvinToCelsius(double temperature) {
  return temperature - 273.15;
}

final mySpaceship = Spaceship();

class Spaceship {
  final SpaceflightCapability spaceflightCapability = SpaceflightCapability();
}

class SpaceflightCapability {
  Duration timeToTraverse(Distance distance) {
    // TODO: actually implement.
    return Duration(days: 365 * 10000);
  }
}

class Distance {
  final double meters;

  const Distance(this.meters);

  const Distance.fromParsecs(double parsecs) : meters = parsecs * 3.086e+16;
}

extension on Duration {
  int get inYears => inDays ~/ 365;
}
