import 'package:flutter/material.dart';
import 'package:project_1/loginpage.dart';

class MenuCustomer extends StatelessWidget {
  const MenuCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 187, 176),
        title: const Text("MENU"),
      ),
      body: Center(
          child: IconButton(
        icon: const Icon(Icons.login_rounded),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) {
            return const LoginPage();
          })));
        },
      )),
    );
  }
}
