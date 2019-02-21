import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  //Instead of doing constructor overloading, Dart lets you define optional named parameters using the curly braces {}
  //The supplied default values must be a compile time constant (I believe this means they should be a constant value [like 0])
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  //we make use of the built-in toString() method that dart classes have again
  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}, width: $width, height: $height)';
}

main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
} 
