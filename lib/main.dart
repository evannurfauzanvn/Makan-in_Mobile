import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_1/auth_services.dart';
import 'package:project_1/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      value: AuthServices.firebaseUserStream,
      initialData: null,
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: Wrapper()),
    );
  }
}
