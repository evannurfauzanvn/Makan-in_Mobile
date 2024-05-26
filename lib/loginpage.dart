import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/beranda_customer.dart';
import 'package:project_1/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  double lingkarankecil(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double lingkaranbesar(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaBackground,
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
                                  color: colorprimar,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                style: TextStyle(color: warnaTekssementara),
                                decoration: InputDecoration(
                                    labelText: "E-mail or phone",
                                    labelStyle: TextStyle(
                                        color: warnaBackground, fontSize: 14),
                                    prefixIcon: Icon(
                                        color: warnaBackground,
                                        Icons.email_outlined),
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: colorprimar,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              child: TextField(
                                style: TextStyle(color: warnaTekssementara),
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "password",
                                    labelStyle: TextStyle(
                                        color: warnaBackground, fontSize: 14),
                                    prefixIcon: Icon(
                                        color: warnaBackground,
                                        Icons.lock_outline),
                                    suffixIcon: IconButton(
                                      color: warnaBackground,
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
                                        color: warnaTekslink,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Register();
                                    }));
                                  },
                                ),
                                TextButton(
                                  child: Text("Sign up!",
                                      style: TextStyle(
                                        color: warnaTekslink,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Register();
                                    }));
                                  },
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            colorgradient,
                                            colorprimar,
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
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return const BerandaCustomer();
                                        })));
                                      },
                                      child: Center(
                                          child: Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                            color: warnaBackground,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: colorprimar,
                                  elevation: 1.5,
                                  mini: true,
                                  onPressed: () {},
                                  child: Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                      child: const Image(
                                          image:
                                              AssetImage("image/gmail.png"))),
                                ),
                                FloatingActionButton(
                                  backgroundColor: colorprimar,
                                  elevation: 1.5,
                                  mini: true,
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return const BerandaCustomer();
                                    })));
                                  },
                                  child: Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      child: const Image(
                                          color: Colors.white,
                                          image:
                                              AssetImage("image/guest.png"))),
                                )
                              ],
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
