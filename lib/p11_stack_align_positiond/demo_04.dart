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

class AlignWidget extends StatelessWidget {
  final Alignment align;

  const AlignWidget({required this.align, super.key});

  @override
  Widget build(BuildContext context) {
    //Align用于控制子控件（FlutterLogo）在父容器（Container）中的位置
    return Align(
      //子控件在父容器中的位置
      alignment: align,
      //子控件
      child: const FlutterLogo(
        size: 60,
      ),
    );
  }
}