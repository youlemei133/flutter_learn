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
      //边框按钮，无背景、阴影，点击时会有背景、阴影
      child:OutlinedButton(onPressed: (){}, child: Text("OutlinedButton")),
    );
  }
}
