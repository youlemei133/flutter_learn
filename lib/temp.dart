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
      child: GestureDetector(
        // //按下事件
        // onTapDown: (details) => print("onTapDown:$details"),
        // //松开事件
        // onTapUp: (details) => print("onTapUp:$details"),
        // //点击事件
        // onTap: () => print("onTap"),
        //
        // //双击事件
        // onDoubleTap: () => print("onDoubleTap"),
        //
        // //每次点击按下事件（不管是长按还是单击都会回调）
        // onLongPressDown: (details) => print("onLongPressDown"),
        // //长按开始事件（点击一段时间后才回调）
        // onLongPressStart: (details) => print("onLongPressStart"),
        // //长按结束事件（长按松开时回调）
        // onLongPressEnd: (details) => print("onLongPressEnd"),
        // //长按结束事件，和onLongPressEnd一样
        // onLongPressUp: () => print("onLongPressUp"),
        // //长按事件，（长按时发生）
        // onLongPress: () => print("onLongPress"),
        // //长按移动事件（长按后开始移动，回调）
        // onLongPressMoveUpdate: (details) => print("onLongPressMoveUpdate"),

        //onVerticalXxx表示监听竖直方向的拖拽
        //onHorizontalXxx表示监听水平方向的拖拽
        //如果同时监听竖直和水平方向的拖拽，发生拖拽时则只会回调相应方向上的回调
        //1.开始时：回调onVerticalDragDown和onHorizontalDragStart
        //2.拖拽开始，此时拖拽方向是确定的，非拖拽方向的监听将会被取消，即调用onXxxCancel
        //3.回调拖拽方法，onXxxDragUpdate()
        //4.拖拽结束，回调onXxxDragEnd()
        //5.若只监听了某个方向的拖拽，则无论实际拖拽方向如何，都会回调设置的监听
        //竖直方向拖拽开始
        onVerticalDragDown: (details) => print("onVerticalDragDown"),
        //竖直方向拖拽开始
        onVerticalDragStart: (details) => print("onVerticalDragStart"),
        //竖直方向拖拽移动
        onVerticalDragUpdate: (details) =>
            print("onVerticalDragUpdate：$details"),
        //竖直方向拖拽结束
        onVerticalDragEnd: (details) => print("onVerticalDragEnd"),
        //竖直方向拖拽结束
        onVerticalDragCancel: () => print("onVerticalDragCancel"),

        child: Container(
          width: 200,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
