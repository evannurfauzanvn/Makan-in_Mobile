import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_1/customer/beranda_customer.dart';
import 'package:project_1/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);

    if (user == null) {
      return Login();
    } else {
      return DashboardCustomer(user: user);
    }
  }
}
