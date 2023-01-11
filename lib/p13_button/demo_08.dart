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
        //SizedBox配合Button：修改按钮大小
        child: SizedBox(
            height: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  //CircleBorder表示一个圆形
                  shape: MaterialStateProperty.all(const CircleBorder())),
              child: const Text("xxx"),
            )));
  }
}
