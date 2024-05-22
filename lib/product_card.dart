import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final AssetImage assetImage;
  final String productName;
  final String productPrice;
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  const ProductCard(
      {super.key,
      this.assetImage = const AssetImage(""),
      this.productName = "",
      this.productPrice = ""});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          width: 168,
          height: 275,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: assetImage, fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      productName,
                      style: textStyle,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 123,
                    height: 35,
                    margin: const EdgeInsets.only(left: 5,bottom: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        productPrice,
                        style: textStyle.copyWith(fontSize: 12),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.only(right: 5,bottom: 5),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz_outlined)),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
