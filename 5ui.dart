import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
double width = MediaQuery.of(context).size.width;
String screen;  
if (width < 600) {  
  screen = "Mobile";  
} else if (width < 1000) {  
  screen = "Tablet";  
} else {  
  screen = "Desktop";  
}  
return MaterialApp(  
  home: Scaffold(  
body: Center(  
      child: Text(  
        screen),  
      ),  
    ),  
  );
}
}