import 'package:flutter/material.dart';
void main() {
runApp(const MaterialApp(home: FirstPage()));
}
// First Screen
class FirstPage extends StatelessWidget {
const FirstPage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.purple[100],
body: Center(
child: ElevatedButton(
child: const Text("Go to Second Page"),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => const SecondPage(),
),
);
},
),
),
);
}
}
// Second Screen
class SecondPage extends StatelessWidget {
const SecondPage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.green[100],
body: Center(
child: ElevatedButton(
child: const Text("Go Back"),
onPressed: () {
Navigator.pop(context);
},
),
),
);
}
}