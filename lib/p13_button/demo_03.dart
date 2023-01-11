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
    return Center(
      //凸起按钮，默认带背景色和阴影，点击时阴影发生变化
      child:ElevatedButton(onPressed: () { },child: Text("ElevatedButton"),)
    );
  }
}
