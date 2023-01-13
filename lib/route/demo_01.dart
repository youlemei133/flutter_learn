import 'package:flutter/material.dart';
import 'package:flutter_learn/route/SecondPage.dart';

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
      child: Column(
        children: [
          const Text("这是第一个页面"),
          ElevatedButton(
            onPressed: () {
              //Navigator：路由管理器，负责页面(Widget)间跳转
              //Navigator使用栈来管理页面，有两个操作push入栈、pop出栈
              //MaterialPageRoute可以理解为对一个路由页面的封装，它继承于PageRoute,定义了页面跳转的动画
              //针对不同平台，提供了与平台风格一致的跳转动画
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
            child: const Text("跳转"),
          ),
        ],
      ),
    );
  }
}
