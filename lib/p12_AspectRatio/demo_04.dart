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
        // width = 200 height =100
        aspectRatio: 2.0 / 1.0,
        child: Stack(
          children: [
            Container(color: Colors.blue,),
            AspectRatio(
              //height = 100 width = height/3
              aspectRatio: 1 / 3,
              child: Container(color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}
