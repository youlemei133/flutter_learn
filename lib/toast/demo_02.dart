import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    return Center(
      child: ElevatedButton(
        child: const Text("自定义Toast"),
        onPressed: () {
          Toast.show(context, "自定义Toast");
        },
      ),
    );
  }
}

///自定义Toast
///toast是在图层的最上面一层插入一个图层，使用OverlayEntry创建图层，使用Overlay插入图层
class Toast {
  static void show(BuildContext context, String message) {
    OverlayEntry entry = _create(context, message);
    Overlay.of(context)?.insert(entry);
    Future.delayed(const Duration(seconds: 1)).then((value) => entry.remove());
  }

  static OverlayEntry _create(BuildContext context, String message) {
    return OverlayEntry(builder: (context) {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black38),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Text(
                message,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
            ),
          ));
    });
  }
}
