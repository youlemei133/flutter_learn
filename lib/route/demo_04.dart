import 'package:flutter/material.dart';
import 'package:flutter_learn/route/Bean.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: const Body(),
    ),
    //命名路由注册
    routes: {
      //路由名 : 对应页面
      "custom_route": (context) => TargetPage(),
    },

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
            //使用async、await用于接收第二个页面的返回值
            onPressed: () async {
              var result = await Navigator.pushNamed(context, "custom_route",
                  arguments: "参数");
              print("返回结果：$result");
            },
            child: const Text("跳转"),
          ),
        ],
      ),
    );
  }
}

class TargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取命名路由传入的参数
    var args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('我是目标页面'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: Text('传入的参数：$args'),
                onPressed: () {
                  Navigator.pop(context, '返回参数');
                }),
          ],
        ),
      ),
    );
  }
}
