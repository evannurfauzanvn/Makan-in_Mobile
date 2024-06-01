import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/history_customer.dart';
import 'package:project_1/kotak_menu_profile.dart';
import 'package:project_1/login.dart';

class ProfileCustomer extends StatelessWidget {
  const ProfileCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
                color: primary, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: primary),
          backgroundColor: secondary,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: primary,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1, spreadRadius: 1, offset: Offset(0, 1))
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: primary,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage("image/burger.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: const Text(
                          "Ini nama",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 23,
                        child: const Text(
                          "Ini no telp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 16,
                        child: const Text(
                          "Ini alamat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black45),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Kotakmenuprofile(
              text: "Alamat",
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: "History",
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Ubah email',
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Ubah password',
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Ubah no telp',
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Ubah foto',
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Daftar toko',
              createLink: () => const Historycustomer(),
            ),
            Kotakmenuprofile(
              text: 'Daftar kurir',
              createLink: () => const Historycustomer(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1, spreadRadius: 1, offset: Offset(0, 1))
                  ]),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text(
                    "Keluar",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ]),
        ));
  }
}
