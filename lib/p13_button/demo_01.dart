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
      //文本按钮，默认背景透明并且没有阴影，点击时会有背景色
      child: TextButton(
          //点击按钮回调
          onPressed: () {
            print("点击了");
          },
          //按钮文本
          child: const Text("TextButton")),
    );
  }
}
