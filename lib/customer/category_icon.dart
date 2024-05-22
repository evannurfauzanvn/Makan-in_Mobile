import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final AssetImage image;

  const CategoryIcon({super.key, this.image = const AssetImage("")});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  "Kategori :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.pedal_bike_sharp)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.pedal_bike_sharp)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.pedal_bike_sharp)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.pedal_bike_sharp)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: const Icon(Icons.pedal_bike_sharp)),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
