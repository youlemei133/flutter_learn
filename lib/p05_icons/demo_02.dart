import 'package:flutter/material.dart';
import 'package:flutter_learn/p05_icons/MyFonts.dart';

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
      child: Row(
        children: const [
          Icon(MyFonts.icon_1,color: Colors.blue,),
          Icon(MyFonts.icon_2,color: Colors.blue,),
          Icon(MyFonts.icon_3,color: Colors.blue,),
        ],
      ),
    );
  }
}
