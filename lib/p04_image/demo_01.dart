import 'package:flutter/material.dart';
///加载本地图片
///1.在根目录新建文件夹（如./images/live）,然后新建2.0x,3.0x文件夹存放不同分辨率的图片（相当于Android中的xxhdpi、xxxhdpi）
///2.在pubspec.yaml文件下配置上面存放的图片
///assets:
/// - images/live/xxx.png
/// 3.使用Image.asset("本地图片地址")来显示图片
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("本地图片"),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Image.asset(
        "images/login/advanced_course_bg_teacher.png",
        fit: BoxFit.scaleDown,
        repeat: ImageRepeat.repeatY,
      ),
    ));
  }
}
