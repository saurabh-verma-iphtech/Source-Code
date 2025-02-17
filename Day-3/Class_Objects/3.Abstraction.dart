abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  void makeSound() {
    print('Bark!');
  }
}

void main() {
  Animal dog = Dog();
  dog.makeSound();
}
