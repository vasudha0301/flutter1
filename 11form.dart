import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController studentClass = TextEditingController();
  String result = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Input Field")),
        body: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(
                labelText: "Enter your name",
              ),
            ),
            TextField(
              controller: age,
              decoration: const InputDecoration(
                labelText: "Enter your age",
              ),
            ),
            TextField(
              controller: studentClass,
              decoration: const InputDecoration(
                labelText: "Enter your class",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = "Name: ${name.text}\n"
                      "Age: ${age.text}\n"
                      "Class: ${studentClass.text}";
                });
              },
              child: const Text("Submit"),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}