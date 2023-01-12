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
      color: Colors.blue,
      //Stack相当于FrameLayout帧布局
      //Stack与外层Container的组合：统一控制每个子Widget在父容器（Container）的位置
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(width: 200,height: 200,color: Colors.red,),
          const Text("这是一个文本",style: TextStyle(fontSize: 40),),
        ],
      ),
    );
  }
}
