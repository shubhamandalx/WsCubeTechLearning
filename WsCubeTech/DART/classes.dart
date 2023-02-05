import 'dart:io';

class Human {
  //Human();

  void hello(String name) {
    print("Hello $name");
  }

  int add(int a, int b) {
    int c = a + b;
    return c;
  }
}

void main() {
  print("Hello There, who are you?\n");
  print("I am ");
  var name = stdin.readLineSync();

  var my = Human();
  my.hello("$name");

  print("\n$name let's play a game\n");

  print("Give me two numbers i will add those\n");
  print("Type your first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Type your second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int result = my.add(num1, num2);
  print("\nAnd, the answer is $result");
}
