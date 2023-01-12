import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/p05_icons/MyFonts.dart';

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
/// 自定义图标：
/// 1.从https://www.iconfont.cn/下载图标
///   a."图标库"->选择图标->"添加入库"->"下载代码"->解压
///   b.解压后会有2个文件：iconfont.json、iconfont.ttf
/// 2.在根目录下创建fonts文件夹，将上面2个文件添加进去
/// 3.在pubspec.yaml中配置本地图标
///   fonts:
///     - family: myFonts
///       fonts:
///         - asset: fonts/iconfont.ttf
///   family表示自定义字体名称，可以随便写
///   asset表示自定义字体文件
/// 4.创建一个dart文件，用于管理上面的字体
///   static const IconData icon_1 =IconData(0xe656, fontFamily: 'myFonts');
///   0xe656表示一个图标的唯一编号，可以在第2步的json文件中找到每个图标的编号
///   myFonts为自定义字体名称，通过该名称可以找到对应的字体文件：fonts/iconfont.ttf
///   icon_1就代表从fonts/iconfont.ttf文件中找到0xe656对应的图标
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          //MyFonts封装了自定义图标
          Icon(MyFonts.icon_1,color: Colors.blue,),
          Icon(MyFonts.icon_2,color: Colors.blue,),
          Icon(MyFonts.icon_3,color: Colors.blue,),
        ],
      ),
    );
  }
}
