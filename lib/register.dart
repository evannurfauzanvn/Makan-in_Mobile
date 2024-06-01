import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/beranda_customer.dart';
import 'package:project_1/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  double lingkarankecil(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double lingkaranbesar(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 90, 20, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("image/Preview.png")),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
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
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Front name",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Last name",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Phone number",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Username",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: secondary,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: textgray),
                                decoration: InputDecoration(
                                    labelText: "Confirm password",
                                    labelStyle: TextStyle(
                                        color: primary, fontSize: 14),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              gradientsecondary,
                                              secondary,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(20),
                                        splashColor: Colors.green,
                                        onTap: () {
                                          Navigator.pushReplacement(context,
                                              MaterialPageRoute(
                                                  builder: ((context) {
                                            return const DashboardCustomer();
                                          })));
                                        },
                                        child: Center(
                                            child: Text(
                                          "SIGN UP",
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
                                    elevation: 0,
                                    mini: true,
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            4, 4, 4, 4),
                                        child: const Image(
                                            image:
                                                AssetImage("image/gmail.png"))),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: secondary,
                                    elevation: 0,
                                    mini: true,
                                    onPressed: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                              builder: ((context) {
                                        return const DashboardCustomer();
                                      })));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            2, 2, 2, 2),
                                        child: const Image(
                                            color: Colors.white,
                                            image:
                                                AssetImage("image/guest.png"))),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Have an account? ",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextButton(
                                    child: Text("Sign in!",
                                        style: TextStyle(
                                          color: textlink,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onPressed: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const Login();
                                      }));
                                    },
                                  )
                                ],
                              ),
                            ),
                          ])),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
