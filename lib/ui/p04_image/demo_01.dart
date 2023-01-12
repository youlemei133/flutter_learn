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
          width: 100,
          height: 500,
          color: Colors.red,
          child: Image.asset(
            "images/login/advanced_course_bg_teacher.png",
            //图片填充方式：
            // fill 图片会拉伸，从而填充整个容器，图片宽高为容器宽高
            // contain 图片会进行缩放，完整显示在容器中，图片宽或高为容器宽高
            // cover 图片会进行缩放以及裁剪，填充整个容器，图片宽高为容器宽高
            // fitWidth 图片会进行缩放以及裁剪，使其宽和容器宽一样
            // fitHeight 图片会进行缩放以及裁剪，使其高和容器高一样
            // none 图片不做任何处理
            // scaleDown 若容器宽高都大于图片宽高，则图片不会缩放
            //           若容器宽高有一个小于图片宽高，则图片会缩小，使图片完整显示在容器中
            fit: BoxFit.scaleDown,
            // repeat: ImageRepeat.repeatY,
          ),
        ));
  }
}
