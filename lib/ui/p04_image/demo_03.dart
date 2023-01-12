import 'package:flutter/material.dart';

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
      //容器
      child: Container(
          width: 200,
          height: 200,
          //容器修饰
          decoration: const BoxDecoration(
              color: Colors.red,
              //圆形
              borderRadius: BorderRadius.all(Radius.circular(100)),
              //容器背景使用图片展示
              image: DecorationImage(
                  image: AssetImage(
                      "images/login/advanced_course_bg_teacher.png")))),
    );
  }
}
