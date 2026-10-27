import 'package:flutter/material.dart';
void main() { 
runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => B();
}
class B extends State<MyApp> {
  bool a = false;
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animations')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: a ? 0.2 : 1,
                duration: const Duration(seconds: 1),
                child: AnimatedSlide(
                  offset: a ? const Offset(0.5, 0) : Offset.zero,
                  duration: const Duration(seconds: 1),
                  child: AnimatedScale(
                    scale: a ? 1.5 : 1,
                    duration: const Duration(seconds: 1),
                    child: AnimatedRotation(
                      turns: a ? 0.5 : 0,
                      duration: const Duration(seconds: 1),
                      child: const Icon(
                        Icons.star,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() => a = !a),
                child: const Text('Animate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}