import 'package:flutter/material.dart';
import 'package:flutter_learn/route/Bean.dart';

class SecondPage extends MaterialApp {
  SecondPage({super.key})
      : super(
            home: Scaffold(
          appBar: AppBar(),
          body: const Body(),
        ));

  SecondPage.arg({
    super.key,
    required String? name,
    required Bean? bean,
  }) : super(
            home: Scaffold(
          appBar: AppBar(),
          body: Body.arg(name, bean),
        ));
}

class Body extends StatelessWidget {
  final String? name;
  final Bean? bean;

  const Body({super.key})
      : name = null,
        bean = null;

  const Body.arg(this.name, this.bean, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("这是第二个页面"), Text("参数值1：$name"), Text("参数值2：$bean")],
      ),
    );
  }
}
