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
    //GridView表示可滑动的网格控件
    //GridView.count：横轴上子控件个数固定，意味着子控件的宽度是可变的
    return GridView.count(
      //滑动方向
      scrollDirection: Axis.vertical,
      //横轴上子控件个数
      crossAxisCount: 3,
      //是否反向布局：比如正常是从上往下布局子控件，反向就是从下往上布局
      reverse: false,
      //不知道啥意思
      primary: true,
      //不知道啥意思
      shrinkWrap: false,
      //内边距
      padding: const EdgeInsets.all(20),
      //子控件宽高比
      childAspectRatio: 2.0,
      //横轴上子控件之间的间距
      crossAxisSpacing: 20,
      //主轴上子控件之间的间距
      mainAxisSpacing: 40,
      //子控件
      children: [
        Container(color: Colors.cyan,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.red,),
        Container(color: Colors.cyan,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.red,),
      ],
    );
  }
}
