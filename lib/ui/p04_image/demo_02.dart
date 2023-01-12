import 'package:flutter/material.dart';

///加载网络图片
///
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("本地图片"),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Image.network(
        "http://img1.baidu.com/it/u=3164998783,2199444470&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333",
        loadingBuilder: (context, widget, event) {
          return Image.asset(
            "images/live/advanced_course_bg_teacher.png",
            width: 200,
            height: 200,
          );
        }/*,
        errorBuilder: (context, object, stackTrace) {
          return const Text(
            "图片加载失败",
            textAlign: TextAlign.center,
          );
        },*/
      ),
    ));
  }
}
