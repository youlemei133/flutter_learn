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
      //Row：行控件
      child: Row(
        //子控件
        children: const [
          //Icon表示图标控件
          //Icons封装了系统图标数据
          Icon(Icons.home,color: Colors.blue,),
          Icon(Icons.account_circle,color: Colors.black38,)
        ],
      ),
    );
  }
}
