import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String gambarproduk;
  final String toko;
  final String namaproduk;
  final String harga;
  final String jarak;

  const ProductCard({
    super.key,
    this.gambarproduk = "",
    this.toko = "",
    this.namaproduk = "",
    this.harga = "",
    this.jarak = "",
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );

    return Container(
      width: 345,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 2),
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
                    image: AssetImage(gambarproduk),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                height: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaproduk,
                      style: textStyle.copyWith(fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      toko,
                      style: textStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Rp. $harga .00,-",
                      style: textStyle.copyWith(fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "$jarak Km",
                      style: textStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tambahkan",
                        style: textStyle.copyWith(fontSize: 14),
                      ))),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: 100,
                height: 30,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
