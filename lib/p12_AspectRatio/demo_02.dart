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
    //200,Match
    return Container(
      width: 200,
      color: Colors.red,
      //AspectRatio：使用宽高比来确定子控件的宽高
      child: AspectRatio(
        //宽占比大些，所以以宽为标准，计算高
        aspectRatio: 2.0 / 1.0,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
