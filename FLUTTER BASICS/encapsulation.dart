class Person {
  String _name;  // Private variable

  Person(this._name);

  // Getter
  String get name => _name;

  // Setter
  set name(String newName) {
    _name = newName;
  }
}

void main() {
  var person = Person('Hawa');
  print(person.name);  // Output: Hawa
  
  person.name = 'Mbabazi';
  print(person.name);  // Output: Mbabazi
}
