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

  void _showAlertDialog(BuildContext context) async {
    //showDialog显示一个弹窗，返回用户选择的结果，需要配合使用async、await
    var result = await showDialog(
        context: context,
        //点击空白处是否弹窗消失
        barrierDismissible: true,
        //弹窗空白处样色
        barrierColor: Colors.black38,
        //创建一个弹窗
        builder: (context) => AlertDialog(
              //标题
              title: const Text("通知"),
              //内容
              content: const Text("是否升级App?"),
              //按钮
              actions: [
                TextButton(
                    //使用Navigator.pop来销毁弹窗，并返回结果，上面的result就是这里返回的
                    onPressed: () => Navigator.of(context).pop("确定"),
                    child: const Text("确定")),
                TextButton(
                    onPressed: () => Navigator.of(context).pop("取消"),
                    child: const Text("取消")),
              ],
            ));
    print("用户选择：$result");
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            //标题
            title: const Text("好消息！"),
            //标题与Dialog间距
            titlePadding: const EdgeInsets.all(0),
            //标题文本样式
            titleTextStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
            //弹窗背景色
            backgroundColor: Colors.redAccent,
            //弹窗阴影范围
            elevation: 20,
            //弹窗形状
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            //弹窗显示位置
            alignment: Alignment.topRight,
            //children间距
            contentPadding: const EdgeInsets.all(0),
            //content部分
            children: [
              const Text("还有一个礼拜就放假了"),
              TextButton(onPressed: () {}, child: const Text("知道了")),
            ],
          );
        });
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return CustomDialog();
        });
  }

  void _showToast(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: const Text("AlertDialog"),
        ),
        const Divider(
          height: 16,
          color: Colors.transparent,
        ),
        ElevatedButton(
          onPressed: () => _showSimpleDialog(context),
          child: const Text("SimpleDialog"),
        ),
        const Divider(
          height: 16,
          color: Colors.transparent,
        ),
        ElevatedButton(
          onPressed: () => _showCustomDialog(context),
          child: const Text("自定义Dialog"),
        ),
        const Divider(
          height: 16,
          color: Colors.transparent,
        ),
        ElevatedButton(
          onPressed: () => _showToast(context),
          child: const Text("Toast"),
        ),
      ],
    ));
  }
}

//自定义Dialog
class CustomDialog extends Dialog {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(10, 10))
            ]),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "这是一个标题",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Text(
                      "这是内容xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
                )),
            const Divider(
              height: 1,
              color: Colors.black26,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("ok");
                  },
                  child: const Text(
                    "确定",
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
