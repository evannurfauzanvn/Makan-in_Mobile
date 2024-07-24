import 'package:flutter/material.dart';
import 'package:project_1/auth_services.dart';
import 'package:project_1/color.dart';
import 'package:project_1/register.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 150, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("image/Preview.png")),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 4,
                              offset: Offset(0, 0))
                        ]),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: secondary,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: emailController,
                              style: TextStyle(color: textgray),
                              decoration: InputDecoration(
                                  labelText: "E-mail",
                                  labelStyle: TextStyle(
                                      color: primary, fontSize: 14),
                                  prefixIcon: Icon(
                                      color: primary, Icons.email_outlined),
                                  border: const UnderlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: secondary,
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            child: TextField(
                              controller: passwordController,
                              style: TextStyle(color: textgray),
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "password",
                                  labelStyle: TextStyle(
                                      color: primary, fontSize: 14),
                                  prefixIcon: Icon(
                                      color: primary, Icons.lock_outline),
                                  suffixIcon: IconButton(
                                    color: primary,
                                    icon: const Icon(
                                        Icons.remove_red_eye_outlined),
                                    onPressed: () {},
                                  ),
                                  border: const UnderlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                child: Text("Forgot password?",
                                    style: TextStyle(
                                      color: textlink,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Register();
                                  }));
                                },
                              ),
                              TextButton(
                                child: Text("Sign up!",
                                    style: TextStyle(
                                      color: textlink,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Register();
                                  }));
                                },
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: 40,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          gradientsecondary,
                                          secondary,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.green,
                                    onTap: () {
                                    },
                                    child: Center(
                                        child: Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                          color: primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: secondary,
                                elevation: 1.5,
                                mini: true,
                                onPressed: () {},
                                child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                    child: const Image(
                                        image: AssetImage("image/gmail.png"))),
                              ),
                              FloatingActionButton(
                                backgroundColor: secondary,
                                elevation: 1.5,
                                mini: true,
                                onPressed: () {
                                  AuthServices.signInAnonymously();
                                },
                                child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                    child: const Image(
                                        color: Colors.white,
                                        image: AssetImage("image/guest.png"))),
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
