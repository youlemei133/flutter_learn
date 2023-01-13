import 'package:flutter/material.dart';
import 'package:flutter_learn/route/Bean.dart';

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
            //使用async、await用于接收第二个页面的返回值
            onPressed: () async {
              var result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return TargetPage();
                  }));
              print("返回结果：${result[0]}");
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
    return Scaffold(
      appBar: AppBar(
        title: Text('我是目标页面'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: Text('参数1'),
                onPressed: () {
                  //退出当前页面，并传入返回值，返回值可以是一个，也可以是多个
                  //只返回一个值
                  Navigator.pop(context, '返回的参数1');
                }
            ),
            ElevatedButton(
                child: Text('参数2'),
                onPressed: () {
                  //返回多个值
                  Navigator.pop(context, ['返回的参数2',1,2]);
                }
            ),
          ],
        ),
      ),
    );
  }
}
