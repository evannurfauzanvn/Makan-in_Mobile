import 'package:flutter/material.dart';
import 'package:project_1/produk/product_card.dart';
import 'package:project_1/produk/produk.dart';

class Productview extends StatelessWidget {
  const Productview({super.key});

  @override
  Widget build(BuildContext context) {
    if (produk.isEmpty) {
      return const Center(child: Text("No products available"));
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: produk.length,
      itemBuilder: (context, index) {
        return ProductCard(
          gambarproduk: produk[index]['gambarproduk'],
          toko: produk[index]['toko'],
          namaproduk: produk[index]['namaproduk'],
          harga: produk[index]['harga'],
          jarak: produk[index]['jarak'],
        );
      },
    );
  }
}
