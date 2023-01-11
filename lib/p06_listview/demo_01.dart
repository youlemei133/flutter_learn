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
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        ListTile(
          title: Text("这是一个简单的标题"),
        ),
        ListTile(
          title: Text("这是一个带图标的标题"),
          leading: Icon(Icons.search_rounded),
        ),
        ListTile(
          title: Text("这是一个带图片的标题"),
          leading: Image(
              image: AssetImage("images/live/advanced_course_bg_teacher.png")),
        ),
        ListTile(
          title: Text("这是一个下面有分割线的标题"),
        ),
        Divider(
          height: 5,
          color: Colors.red,
        ),
        ListTile(
          title: Text("这是一个普通标题"),
        ),
      ],
    );
  }
}

