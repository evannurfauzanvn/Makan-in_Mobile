import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final AssetImage assetImage;
  final String shopName;
  final String productName;
  final String productPrice;
  final String distance;
  final TextStyle textStyle = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );

  const ProductCard(
      {super.key,
      this.assetImage = const AssetImage(""),
      this.shopName = "",
      this.productName = "",
      this.productPrice = "",
      this.distance = ""});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 345,
          margin: const EdgeInsets.only(top: 5,bottom: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 1,
                spreadRadius: 1,
                offset:Offset(0, 2)
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 85,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: assetImage, fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: textStyle.copyWith(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          shopName,
                          style: textStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Rp. $productPrice .00,-",
                          style: textStyle.copyWith(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "$distance Km",
                          style: textStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.only(right: 5, bottom: 5),
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
