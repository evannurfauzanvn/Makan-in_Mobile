import 'package:flutter/material.dart';

class Kotakmenuprofile extends StatelessWidget {
  final String text;
  final Widget Function() createLink;
  const Kotakmenuprofile(
      {super.key,
      required this.text,
      required this.createLink,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 5),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 1, spreadRadius: 1, offset: Offset(0, 1))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return createLink();
              }));
            },
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
