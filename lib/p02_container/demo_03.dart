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
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        "Container",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
