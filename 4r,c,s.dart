import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text("Row, Column and Stack"),
),
body: Column(
children: [
// Column Example
Text(
"Column Example",
style: TextStyle(fontSize: 20),
),
Text("First"),
Text("Second"),
SizedBox(height: 30),  
          // Row Example  
          Text(  
            "Row Example",  
            style: TextStyle(fontSize: 20),  
          ),  
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [  
              Icon(Icons.home),  
              Icon(Icons.favorite),  
            ],  
          ),  
          SizedBox(height: 30),  
          // Stack Example  
          Text(  
            "Stack Example",  
            style: TextStyle(fontSize: 20),  
          ),  
          Stack(  
            alignment: Alignment.center,  
            children: [  
              Container(  
                width: 150,  
                height: 150,  
                color: Colors.blue,  
              ),  
              Text(  
                "Hello",  
                style: TextStyle(  
                  color: Colors.white,  
                  fontSize: 20,  
                ),  
              ),  
            ],  
          ),  
        ],  
      ),  
    ),  
);
}
}