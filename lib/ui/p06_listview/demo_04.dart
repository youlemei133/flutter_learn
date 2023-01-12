import 'package:flutter/material.dart';

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
    //使用ListView.builder来构建ListView
    return ListView.builder(
      //子控件个数
      itemCount: datas.length,
      //子控件构造器，用于创建指定位置的子控件
      itemBuilder: (context, position) {
        return Text(datas[position]);
      },
    );
  }
}
