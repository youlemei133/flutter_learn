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
        child: Row(children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Container(
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          //父容器
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            //Padding：设置子控件（蓝色Container）与父容器（红色Container）之间的间距
            child: Padding(
              padding: const EdgeInsets.all(16),
              //子控件
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ]));
  }
}
