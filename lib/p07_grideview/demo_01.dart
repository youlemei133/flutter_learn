import 'package:flutter/material.dart';


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
    return GridView.count(crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      reverse: false,
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      childAspectRatio: 2.0,
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(color: Colors.cyan,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.red,),
        Container(color: Colors.cyan,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.red,),
      ],
    );
  }
}
