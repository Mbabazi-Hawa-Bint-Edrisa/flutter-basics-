class Car {
  String brand;
  int year;

  // Constructor
  Car(this.brand, this.year);

  // Method
  void showDetails() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  var myCar = Car('Toyota', 2021);
  myCar.showDetails(); // Output: Brand: Toyota, Year: 2021
}
