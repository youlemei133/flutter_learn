import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: const Body(),
    ),
    //命名路由注册
    routes: {
      //路由名 : 对应页面
      "custom_route": (context) => const TargetPage(),
    },
    //监听所有路由跳转：普通路由跳转、命名路由跳转
    navigatorObservers: [MyNavigatorObserver()],
    //监听未注册命名路由跳转，可根据路由信息进行跳转
    onGenerateRoute: (RouteSettings settings) {
      print('onGenerateRoute Route name:${settings.name}');
      if (settings.name == "TargetPage") {
        return MaterialPageRoute(builder: (context) => const TargetPage());
      }
      return null;
    },
    //监听未注册命名路由跳转，若onGenerateRoute中没有处理该跳转，则会回调该方法
    //这里可写统一处理未知跳转的逻辑
    onUnknownRoute: (RouteSettings settings) {
      print('onUnknownRoute Route name:${settings.name}');
      return MaterialPageRoute(builder: (context) => const UnknownPage());
    },
  ));
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    //路由进栈
    print("NavigatorObserver didPush");
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    //路由出栈
    print("NavigatorObserver didPop");
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("这是第一个页面"),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                //普通路由跳转
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TargetPage()));
              },
              child: const Text("普通路由跳转"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                //已注册的命名路由跳转
                Navigator.pushNamed(context, "custom_route");
              },
              child: const Text("命名路由跳转"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                //未注册的命名路由跳转
                Navigator.pushNamed(context, "TargetPage");
              },
              child: const Text("未注册命名路由跳转1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                //未注册的命名路由跳转
                Navigator.pushNamed(context, "xxxx");
              },
              child: const Text("未注册命名路由跳转2"),
            ),
          ),
        ],
      ),
    );
  }
}

class TargetPage extends StatelessWidget {
  const TargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我是目标页面'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('返回'),
            onPressed: () {
              //路由出栈
              Navigator.pop(context);
            }),
      ),
    );
  }
}

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('未知页面'),
      ),
      body: const Center(
          child: Text(
            "404 Not Find",
            style: TextStyle(
                fontSize: 24, color: Colors.black26, fontWeight: FontWeight.bold),
          )),
    );
  }
}
