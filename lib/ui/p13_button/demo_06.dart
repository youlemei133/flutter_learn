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
      child: Row(
        children: [
          //带图标的文本按钮
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: const Text("搜索")),
          //带图标的凸起按钮
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.home),
              label: const Text("家园")),
          //带图标的边框按钮
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.photo),
              label: const Text("照片")),
        ],
      ),
    );
  }
}
