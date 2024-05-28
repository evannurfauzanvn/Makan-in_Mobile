import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/loginpage.dart';

class ProfileCustomer extends StatelessWidget {
  const ProfileCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: warnaBackground),
        backgroundColor: colorprimar,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: warnaBackground,
        child: Center(
            child: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) {
              return const LoginPage();
            })));
          },
        )),
      ),
    );
  }
}
