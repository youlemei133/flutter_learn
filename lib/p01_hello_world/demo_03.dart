import 'package:flutter/material.dart';

///组件抽离
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("这是标题栏"),),
      body: const MyBody(),
    ),
  ));
}

///自定义组件需要继承StatelessWidget或StatefulWidget
///StatelessWidget无状态组件，状态不可变
///StatefulWidget有状态组件，状态可变
class MyBody extends StatelessWidget{
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "组件抽离",
        style: TextStyle(
          fontSize: 40,
          color: Colors.deepOrange
        ),
      ),
    );
  }

}