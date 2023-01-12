import 'package:flutter/material.dart';

/// MaterialApp和Scaffold两个组件装饰App
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "这是一个标题栏",
        ),
      ),
      body: const Center(
        child: Text(
          "这是主页部分",
        ),
      ),
    ),
  ));
}
