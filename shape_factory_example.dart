import 'dart:math';

// //Here's our factory for creating shapes
// //Uses the abstract class Shape, then takes a parameter to determine which subclass of Shape to create
// Shape shapeFactory(String typeOfShape) {
//   //Can do the more streamlined if statement
//   if (typeOfShape == 'circle') return Circle(2);
//   //Or can do a normal, Java-style if-statement
//   if (typeOfShape == 'square') {
//     return Square(2);
//   }
//   throw 'Can\'t create ${typeOfShape}.';
// }

abstract class Shape {
  //Instead of the separate factory, Dart provides a factory keyword to be used inside a class
  factory Shape(String typeOfShape) {
    if (typeOfShape == 'circle') return Circle(2);
    if (typeOfShape == 'square') return Square(2);
    throw 'Can\'t create ${typeOfShape}.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

//In Dart, every class defines an interface, so we can implement circle with this CircleMock class
//However, we need a 'concrete implementation,' so we have to include at least one instance variable
class CircleMock implements Circle {
  num area;
  num radius;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  //Optional extension from tutorial: We can use a try catch statement and we'll a cleaner error report
  try {
    final circle = Shape('circle');
    final square = Shape('square');
    //Our Shape factory doesn't include anything about triangles!
    final triangle = Shape('triangle');
    print(circle.area);
    print(square.area);
    print(triangle.area);
  } catch (err) {
    print(err);
  }
}
