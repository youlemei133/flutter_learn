import 'package:flutter/material.dart';

///Hello World

void main() {
  runApp(const Center(
    child: Text(
      "Hello World",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40,
        color: Colors.cyan,
        backgroundColor: Colors.deepOrange
      ),
    ),
  ));
}
