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
    //ListView表示一个可滑动列表
    return ListView(
      //滚动方向：Axis.vertical竖直方向滚动，Axis.horizontal水平方向滚动
      scrollDirection: Axis.vertical,
      //子控件：ListView包含多个子控件
      children: const [
        //ListTile:标准列表子控件
        ListTile(
          //主标题
          title: Text("这是一个简单的标题"),
        ),
        ListTile(
          title: Text("这是一个带图标的标题"),
          //leading:主标题前面的控件
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
        //Divider：分割线
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

