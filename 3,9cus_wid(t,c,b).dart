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
title: Text("Flutter Widgets"),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
          // Text Widget
          Text(
          "Hello Flutter",
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20),  
          // Image Widget  
          Image.network(  
            "https://picsum.photos/150",  
            width: 150,  
            height: 150,  
          ),    
          SizedBox(height: 20),  
          // Container Widget  
          Container(  
            padding: EdgeInsets.all(15),  
            color: Colors.blue,  
            child: Text(  
              "This is a Container",  
              style: TextStyle(color: Colors.white),  
            ),  
          ),  
          SizedBox(height: 20),  
          // Icon Widget  
          Icon(  
            Icons.favorite,  
            color: Colors.red,  
            size: 40,  
          ),  
          SizedBox(height: 20),  
          // ElevatedButton Widget  
          ElevatedButton(  
            onPressed: () {  
              print("Button clicked");  
            },  
            child: Text("Click Me"),  
          ),  
        ],  
      ),  
    ),  
  ),  
);
}
}