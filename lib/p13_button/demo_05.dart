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
      //图标按钮，没有文字，无背景，点击时会出现背景
      child:IconButton(onPressed: (){}, icon: FlutterLogo(size: 60,),),
    );
  }
}
