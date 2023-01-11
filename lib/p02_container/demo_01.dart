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
      //指定child的位置
      alignment: Alignment.topLeft,
      //容器宽
      width: 200,
      //容器高
      height: 200,
      //容器修饰：背景色
      decoration: const BoxDecoration(
          color: Colors.red,
      ),
      //子控件
      child: const Text(
        "Container",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
