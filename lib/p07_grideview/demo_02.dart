import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("本地图片"),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //GridView.extent：固定横轴上子控件的宽度，意味着横轴上子控件个数是可变的
    return GridView.extent(
      scrollDirection: Axis.vertical,
      //横轴上子控件最大宽度
      maxCrossAxisExtent: 400,
      //子控件宽高比
      childAspectRatio: 2.0,
      children: [
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.red,
        ),
      ],
    );
  }
}
