import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("本地图片"),
      ),
      body: const SizedBox(
        height: 50,
        child: Body(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black38,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amber,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.deepOrange,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.cyan,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amberAccent,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black38,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amber,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.deepOrange,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.cyan,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amberAccent,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black38,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.black,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amber,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.deepOrange,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.cyan,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.amberAccent,
        ),
      ],
    );
  }
}