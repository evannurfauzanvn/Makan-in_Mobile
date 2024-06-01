import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/login.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: primary),
        backgroundColor: secondary,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: primary,
        child: Center(
            child: IconButton(
          icon: const Icon(Icons.login_rounded),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) {
              return const Login();
            })));
          },
        )),
      ),
    );
  }
}
