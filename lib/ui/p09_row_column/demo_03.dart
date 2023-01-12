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
      //Flex表示Row或Column
      child: Flex(
        //方向：horizontal表示行、vertical表示列
        direction: Axis.horizontal,
        children: [
          //Expanded使用flex来扩展子控件（宽或高可变），用于填充Row、Column、Flex控件，相当于Android中LinearLayout的weight
          Expanded(
            //子控件占父容器（Flex）的权重
            flex: 2,
            //子控件
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
