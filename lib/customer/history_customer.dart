import 'package:flutter/material.dart';
import 'package:project_1/color.dart';

class Historycustomer extends StatelessWidget {
  const Historycustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: primary),
        backgroundColor: secondary,
        title: Text("History",style: TextStyle(color: primary),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: primary,
      ),
    );
  }
}
