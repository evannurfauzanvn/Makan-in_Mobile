import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold
  );

  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
        child: Align(
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        width: 85,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "image/fast food.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text("Fast Food",style: textStyle)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        width: 85,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "image/aneka nasi.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text("Aneka Nasi",style: textStyle)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        width: 85,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "image/seafood.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text("Sea Food",style: textStyle)
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 85,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(0, 2))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "image/minuman.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("Minuman",style: textStyle,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
