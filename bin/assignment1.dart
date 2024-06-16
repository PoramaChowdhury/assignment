class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven ;

  static int numberOfCars = 0;

  Car(this.brand,
      this.model,
      this.year){
    this. milesDriven = 0.0;
    numberOfCars++;
  }

  void drive(double miles) {

    milesDriven  += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  void age() {

    int currentYear = DateTime.now() .year;
    int Age = currentYear - year;
    print('Age- $Age');
  }

}



void main(){
  Car obj = Car('Toyota','T',1995);
  Car obj1 = Car('Audi','A',1996);
  Car obj2 = Car('Jaguar','J',1997);

  obj.drive(120.30);
  obj1.drive(121.30);
  obj2.drive(122.30);

  print('brand name- ${obj.getBrand()}');
  print('model name- ${obj.getModel()}');
  print('year- ${obj.getYear()}');
  print('brand name- ${obj.getMilesDriven()}');
  obj.age();


  print('brand name- ${obj1.getBrand()}');
  print('model name- ${obj1.getModel()}');
  print('year- ${obj1.getYear()}');
  print('brand name- ${obj1.getMilesDriven()}');
  obj1.age();

  print('brand name- ${obj2.getBrand()}');
  print('model name- ${obj2.getModel()}');
  print('year- ${obj2.getYear()}');
  print('brand name- ${obj2.getMilesDriven()}');
  obj2.age();



 print('Total number of car: ${Car.numberOfCars}');



}


















