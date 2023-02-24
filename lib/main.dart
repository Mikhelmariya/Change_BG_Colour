import 'dart:math';

import 'package:flutter/material.dart';

// main()  tells Flutter to run the app defined in MyApp , it is the starting point
void main() {
  runApp(const changeColor());
}

class changeColor extends StatelessWidget {
  const changeColor({super.key});

  // Widgets are the elements from which you build every Flutter app
  // Everything starts from home:
  // Scaffold is like a blank page where we can draw
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Change background color",
              style: TextStyle(
                  color: Colors.redAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: Colors.amber[100],
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Tapped");
            },
            child: Text(
              "Tap me",
              style: TextStyle(
                  color: Colors.redAccent, fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
