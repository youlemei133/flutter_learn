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
    return const Center(
      //CircleAvatar:表示一个圆形头像
      child: CircleAvatar(
        radius: 100,
        backgroundImage:  AssetImage("images/login/advanced_course_bg_teacher.png"),
      ),
    );
  }
}
