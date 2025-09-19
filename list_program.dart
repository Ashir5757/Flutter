import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter 6 integers:");
  for (int i = 0; i < 6; i++) {
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  // Sum of odd numbers
  int sumOdd = numbers.where((n) => n.isOdd).reduce((a, b) => a + b);

  // Smallest number
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  print("Sum of odd numbers: $sumOdd");
  print("Smallest number: $smallest");
}