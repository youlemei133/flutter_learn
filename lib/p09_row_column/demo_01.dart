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
    return Container(
      color: Colors.black26,
      height: 200,
      child: Row(
        //crossAxisAlignment：横轴上（竖直方向）对齐方式
        //start：行位于父容器顶部
        //end：行位于父容器底部
        //center：行位于父容器中间
        //stretch：行拉伸高度与父容器高一样
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment：主轴即水平方向上子控件对齐方式
        //end：子控件位于行的尾端
        //start：子控件位于行的起始端
        //center：子控件位于行的中间
        //spaceXxx：用于控制子控件之间、以及子控件与两端的间距，假设有3个子控件ABC
        //spaceEvenly：1 A 1 B 1 C 1
        //spaceBetween：0 A 1 B 1 C 0
        //spaceAround：1 A 2 B 2 C 1
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconContainer(
            Icons.home,
            color: Colors.red,
          ),
          IconContainer(
            Icons.search,
            color: Colors.blue,
          ),
          IconContainer(
            Icons.send,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  double size;
  IconData icon;

  IconContainer(this.icon,
      {super.key, this.size = 32.0, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
