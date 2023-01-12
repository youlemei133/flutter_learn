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
    //Wrap表示一个流式布局
    return Wrap(
      //主轴（布局方向）
      direction: Axis.horizontal,
      //主轴的对齐方式
      alignment: WrapAlignment.start,
      //子控件之间在主轴上的间距
      spacing: 10,
      //竖直方向上的排列方式：down从上往下，up从下往上
      verticalDirection: VerticalDirection.down,
      runAlignment: WrapAlignment.center,
      //子控件之间在横轴上的间距
      runSpacing: 10,
      children: [
        Button("第1集", () {}),
        Button("第2集", () {}),
        Button("第3集", () {}),
        Button("第4集", () {}),
        Button("第5集", () {}),
        Button("第6集", () {}),
        Button("第7集", () {}),
        Button("第8集", () {}),
        Button("第9集", () {}),
        Button("第10集", () {}),
        Button("第11集", () {}),
        Button("第12集", () {}),
        Button("第13集", () {}),

        Button("第1集", () {}),
        Button("第2集", () {}),
        Button("第3集", () {}),
        Button("第4集", () {}),
        Button("第5集", () {}),
        Button("第6集", () {}),
        Button("第7集", () {}),
        Button("第8集", () {}),
        Button("第9集", () {}),
        Button("第10集", () {}),
        Button("第11集", () {}),
        Button("第12集", () {}),
        Button("第13集", () {}),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const Button(this.text, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 236, 233, 233)),
          foregroundColor: MaterialStateProperty.all(Colors.blue)),
      child: Text(text),
    );
  }
}
