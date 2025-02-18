mixin Swimmer {
  void swim() {
    print("Swimming...");
  }
}

mixin Flyer {
  void fly() {
    print("Flying...");
  }
}

class Bird with Flyer, Swimmer {}

void main() {
  Bird bird = Bird();
  bird.fly(); // Output: Flying...
  bird.swim(); // Output: Swimming...
}
