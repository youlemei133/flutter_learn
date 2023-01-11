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
    return Container(
      color: Colors.black26,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: IconContainer(
              Icons.home,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconContainer(
              Icons.search,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  double size;
  IconData icon;

  IconContainer(this.icon,
      {super.key, this.size = 32.0, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
