import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Body(),
      ),
    ),
  ));
}

const String title = "文本";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 400,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 30.0, offset: Offset(20, 2))
          ],
          borderRadius: BorderRadius.circular(50),
          //边框：color边框颜色，width边框宽度，style边框属性，strokeAlign边框位置
          border: Border.all(
              color: Colors.blue,
              width: 10,
              style: BorderStyle.solid,
              strokeAlign: StrokeAlign.outside)),
      child: const Text(
        "Hello Flutter",
        textAlign: TextAlign.right,
        // maxLines: 1,
        // overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 24,
            //划线位置
            decoration: TextDecoration.overline,
            //划线颜色
            decorationColor: Colors.amber,
            //划线样式
            decorationStyle: TextDecorationStyle.solid,
            //单词之间的间距
            wordSpacing: 10,
            //字母之间间距
            letterSpacing: 5,
            //文本样式
            fontStyle: FontStyle.italic,
            //文本粗细
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
