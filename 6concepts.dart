void main() {
  String name = "Harshi";
  int age = 19;
  double marks = 75.5;
  // Operators
  int a = 5;
  int b = 10;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");
  // If-else
  if (marks >= 40) {
    print("$name passed");
  } else {
    print("$name failed");
  }
  // For loop
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  // Function
  int result = add(10, 20);
  print("Sum using function: $result");
}
int add(int x, int y) {
  return x + y;
}