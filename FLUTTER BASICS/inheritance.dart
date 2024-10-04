class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  // Method overriding
  @override
  void sound() {
    print('Dog barks');
  }
}

void main() {
  var dog = Dog();
  dog.sound();  // Output: Dog barks
}
