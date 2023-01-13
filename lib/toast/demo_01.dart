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
        child: const Text("第三方库Flutter toast"),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "这是一个吐司",
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.black26,
              textColor: Colors.blueAccent);
        },
      ),
    );
  }
}
