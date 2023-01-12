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
      //原始触摸事件使用Listener来监听
      child: Listener(
        //触摸事件所在控件
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        //手指按下监听
        //event表示触摸事件
        onPointerDown: (event) {
          print("手指按下:$event");
          print("在控件上的位置：${event.localPosition}");
          print("在屏幕上的位置：${event.position}");
        },
        //手指滑动监听
        onPointerMove: (event) => print("手指滑动：$event"),
        //手指松开监听
        onPointerUp: (event) => print("手指松开:$event"),
        //鼠标悬停监听
        // onPointerHover: (event) => print("鼠标悬停:$event"),
      ),
    );
  }
}
