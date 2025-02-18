enum Planets { Earth, Mars, Jupiter }

void main() {
  // toString()
  print(Planets.Earth.toString()); // prints: Planets.Earth

  // name
  print("Using method 'name': ${Planets.Earth.name}"); // prints: Earth

  // byName(String name)
  print(
      "Using mehthod byName(String name): ${Planets.values.byName('Earth')}"); // prints: Planets.Earth
  
}
