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
    return Container(
      width: 200,
      color: Colors.red,
      child: AspectRatio(
        //200 100
        aspectRatio: 2.0 / 1.0,
        child: Stack(
          children: [
            Container(color: Colors.blue,),
            AspectRatio(
              // width = 200/3   height = width / 3
              aspectRatio: 3 / 1,
              child: Container(color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
