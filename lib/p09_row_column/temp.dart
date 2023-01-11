import 'package:flutter/foundation.dart';
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
        ),
        const Divider(height: 20,color: Colors.transparent,),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: 220,
                  color: Colors.blue,
                )),
            const SizedBox(width: 20),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.cyan,
                    ),
                    const Divider(height: 20,color: Colors.transparent,),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.deepOrange,
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
