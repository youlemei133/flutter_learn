import 'package:flutter/material.dart';
import 'package:flutter_learn/p02_container/demo_01.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("列表"),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  Body({super.key});

  List<String> datas = [];

  void _children() {
    for (int i = 0; i < 100; i++) {
      datas.add(
        "这是标题$i",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _children();
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, position) {
        return Text(datas[position]);
      },
    );
  }
}
