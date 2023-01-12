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

  _onPointerDown(event) => print("_onPointerDown:$event");
  _onPointerMove(event) => print("_onPointerMove:$event");
  _onPointerUp(event) => print("_onPointerUp:$event");

  _onPointerDown1(event) => print("_onPointerDown1:$event");
  _onPointerMove1(event) => print("_onPointerMove1:$event");
  _onPointerUp1(event) => print("_onPointerUp1:$event");

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerMove: _onPointerMove,
      onPointerUp: _onPointerUp,
      child: Stack(
        children: [
          GestureDetector(
            onTap: ()=>print("点击事件"),
            onVerticalDragUpdate: (details)=> print("横向滑动：$details"),
            child: Listener(
              onPointerDown: _onPointerDown1,
              onPointerMove: _onPointerMove1,
              onPointerUp: _onPointerUp1,
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
