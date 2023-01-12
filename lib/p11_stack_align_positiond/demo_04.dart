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
      width: 400,
      height: 400,
      color: Colors.red,
      //Stack相当于FrameLayout帧布局
      //Stack与Align结合使用：可以控制每个子Widget显示在父容器（Container）不同的位置
      child: Stack(
        // alignment: Alignment.topRight,
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: FlutterLogo(size: 60,),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlutterLogo(size: 60,),
          )
        ],
      ),
    );
  }
}
