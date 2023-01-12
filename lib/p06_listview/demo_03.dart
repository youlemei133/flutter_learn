import 'package:flutter/material.dart';
import 'package:flutter_learn/p02_container/demo_01.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("列表"),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  //动态创建一组控件
  List<Widget> _children1() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add( ListTile(
        title: Text(
          "这是标题$i",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      //children使用动态创建的控件
      children: _children1(),
    );
  }
}
