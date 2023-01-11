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
    return Center(
      child: Row(
        children: const [
          Icon(Icons.home,color: Colors.blue,),
          Icon(Icons.account_circle,color: Colors.black38,)
        ],
      ),
    );
  }
}
