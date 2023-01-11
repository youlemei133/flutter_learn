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
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.all(20),
          child: Text("热搜", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black26
          ),),),
        const Divider(height: 1, color: Colors.black26,),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              Button("女装", () {}),
              Button("男装", () {}),
              Button("秋装", () {}),
              Button("笔记本", () {}),
              Button("台式机", () {}),
              Button("电视机", () {}),
              Button("NBA", () {}),
              Button("CBA", () {}),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.all(20),
          child: Text("历史记录", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black26
          ),),),
        const Divider(height: 1, color: Colors.black26,),
        const Padding(padding: EdgeInsets.all(32),child: Text("女装"),),
        const Divider(height: 1, color: Colors.black26,),
        const Padding(padding: EdgeInsets.all(32),child: Text("NBA"),),
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
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 236, 233, 233)),
          foregroundColor: MaterialStateProperty.all(Colors.blue)),
      child: Text(text),
    );
  }
}
