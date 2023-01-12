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
          style: ButtonStyle(
              //文本样式
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              //文本颜色
              foregroundColor: MaterialStateProperty.all(Colors.red),
              //背景色
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              //阴影颜色
              shadowColor: MaterialStateProperty.all(Colors.green),
              //阴影范围，值越大阴影范围越大
              elevation: MaterialStateProperty.all(10),
              //内边距
              padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
              //按钮形状
              shape: MaterialStateProperty.all(
                  //圆角矩形
                  const RoundedRectangleBorder(
                      //圆角大小
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
              //边框
              side: MaterialStateProperty.all(
                  BorderSide(width: 2, color: Colors.black))),

          //点击按钮回调
          onPressed: () {
            print("点击了");
          },
          //按钮文本
          child: const Text("TextButton")),
    );
  }
}
