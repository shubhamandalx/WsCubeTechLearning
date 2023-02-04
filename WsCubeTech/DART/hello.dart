import 'dart:io';

void main() {
  print("Hello World!\n");
  stdout.write('Enter your Name: \n');
  var name = stdin.readLineSync();
  print("Hello $name");
}
