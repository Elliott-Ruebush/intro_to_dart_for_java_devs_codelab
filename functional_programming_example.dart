//From: https://codelabs.developers.google.com/codelabs/from-java-to-dart/#5  
//In functional programming you can do things like:

// Pass functions as arguments.
// Assign a function to a variable.
// Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
// Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java in the JDK 8 release).

//In Dart, functions are objects of the type 'Function'
//This quick example demonstrates how you can call an instance of a Dart class as if it were a function
// class WannabeFunction {
//   call(String a, String b, String c) => '$a $b $c!';
// }

// main() {
//   var wf = new WannabeFunction();
//   var out = wf("Hi","there,","gang");
//   print('$out');
// }
//End example

//String interpolation means that 'a' * length is 'a' repeated length # of times
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  //We replace a foreach loop with this method chaining line of code
  // values.map(scream).forEach(print);

  //Or, we can use other Iterable features
  values.skip(1).take(3).map(scream).forEach(print);
  //Skip 1
  //Take the next 3 values and ignore the rest
}
