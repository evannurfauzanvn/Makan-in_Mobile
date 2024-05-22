import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/beranda_customer.dart';
import 'package:project_1/loginpage.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  double lingkarankecil(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double lingkaranbesar(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaBackground,
      body: Stack(children: <Widget>[
        Positioned(
          right: -lingkarankecil(context) / 3,
          top: -lingkarankecil(context) / 3,
          child: Container(
            width: lingkarankecil(context),
            height: lingkarankecil(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                colorgradient,
                colorprimar,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
        ),
        Positioned(
          left: -lingkaranbesar(context) / 6,
          top: -lingkaranbesar(context) / 6,
          child: Container(
            width: lingkaranbesar(context),
            height: lingkaranbesar(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                colorgradient,
                colorprimar,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child:
                const Center(child: Image(image: AssetImage("image/Preview.png"))),
          ),
        ),
        Positioned(
          right: -lingkarankecil(context) / 4,
          bottom: -lingkarankecil(context) / 4,
          child: Container(
            width: lingkarankecil(context),
            height: lingkarankecil(context),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromARGB(132, 136, 136, 136),
                Color.fromARGB(129, 194, 194, 194)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 160, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Front name",
                                labelStyle: const TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Last name (optional)",
                                  labelStyle: const TextStyle(fontSize: 14),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "E-mail or phone",
                                  labelStyle: const TextStyle(fontSize: 14),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  labelStyle: const TextStyle(fontSize: 14),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: const TextStyle(fontSize: 14),
                                  suffixIcon:
                                      const Icon(Icons.remove_red_eye_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Confirm password",
                                  labelStyle: const TextStyle(fontSize: 14),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          ])),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
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
                                    MaterialPageRoute(builder: ((context) {
                                  return const BerandaCustomer();
                                })));
                              },
                              child: const Center(
                                  child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor:
                              const Color.fromARGB(255, 228, 228, 228),
                          elevation: 0,
                          mini: true,
                          onPressed: () {},
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                              child: const Image(
                                  image: AssetImage("image/gmail.png"))),
                        ),
                        FloatingActionButton(
                          backgroundColor:
                              const Color.fromARGB(255, 228, 228, 228),
                          elevation: 0,
                          mini: true,
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: ((context) {
                              return const BerandaCustomer();
                            })));
                          },
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                              child: const Image(
                                  image: AssetImage("image/guest.png"))),
                        )
                      ],
                    ),
                  ),
                  Row(
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
                        child: const Text("Sign in!",
                            style: TextStyle(
                              color: Color.fromARGB(174, 65, 65, 177),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                      )
                    ],
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
