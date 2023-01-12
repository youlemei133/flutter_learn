import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Body(),
      ),
    ),
  ));
}

const String title = "容器Container_01";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      transform: Matrix4.rotationZ(0.5),
      child: const Text(
        "Container",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
