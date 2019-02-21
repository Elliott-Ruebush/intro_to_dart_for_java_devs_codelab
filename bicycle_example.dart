//Code from the Google Codelabs "Intro to Dart for Java Developers" codelab

class Bicycle {
  //Class variables
  //All unitialized variables (regardless of type) have the value 'null'
  int cadence;
  int _speed;
  int gear;

  //Shorthand constructor for the Bicycle class
  Bicycle(this.cadence, this.gear);
  //The commented code below is the verbose version of the above constructor
  // Bicycle(int cadence, int gear, int speed){
  //   this.cadence = cadence;
  //   this.gear = gear;
  //   this.speed = speed;
  // }
  
  //Dart provides a built in toString() method for each class
  //Notice the usage of the $ to denote that the following value is a variable
  @override
  String toString() => 'Bicycle: $_speed mph';

  //We're adding a get speed variable with an arrow function
  //Dart provides getters and setters for all public instance variables.
  int get speed => _speed;

  //applyBrake and speedUp methods to finish implementing _speed as a read-only variable
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 3);
  print(bike);
}
