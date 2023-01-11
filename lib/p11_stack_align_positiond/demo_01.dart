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
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: const AlignWidget(),
      ),
    );
  }
}

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Align用于控制子控件（FlutterLogo）在父容器（Container）中的位置
    return const Align(
      //子控件在父容器中的位置
      alignment: Alignment.topLeft,
      //子控件
      child: FlutterLogo(
        size: 60,
      ),
    );
  }
}
