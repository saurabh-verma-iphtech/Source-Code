enum Vehicle {
  Car(4),
  Bike(2),
  Truck(6);

  final int wheels;
  const Vehicle(this.wheels);

  void showWheels() {
    print("A ${name} has $wheels wheels.");
  }
}

void main() {
  Vehicle.Car.showWheels(); // Output: A Car has 4 wheels.

  // Another way to call:
  Vehicle vehicle = Vehicle.Bike;
  vehicle.showWheels();
}
