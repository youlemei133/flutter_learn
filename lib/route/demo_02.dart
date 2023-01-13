import 'package:flutter/material.dart';
import 'package:flutter_learn/route/Bean.dart';
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
              //路由传递参数到第二个页面：通过第二个页面的构造方法传入参数即可
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage.arg(name: "flutter", bean: Bean("dart", 4));
              }));
            },
            child: const Text("跳转"),
          ),
        ],
      ),
    );
  }
}
