import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
        Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            )),
      ],
    );
  }
}
