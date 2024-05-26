import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/category_icon.dart';
import 'package:project_1/customer/event_beranda_customer.dart';
import 'package:project_1/customer/menu_customer.dart';
import 'package:project_1/product_card.dart';

class BerandaCustomer extends StatelessWidget {
  const BerandaCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 2,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorprimar,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 180,
              height: 40,
              child: Image.asset("image/Preview.png"),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                      color: warnaBackground, Icons.shopping_cart_outlined),
                  iconSize: 25,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return const MenuCustomer();
                    })));
                  },
                ),
                IconButton(
                  iconSize: 25,
                  icon: Icon(color: warnaBackground, Icons.chat_outlined),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return const MenuCustomer();
                    })));
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: controller,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(
                  color: colors[index],
                );
              },
            ),
          ),
          Container(
              height: 200, color: warnaBackground, child: const CategoryIcon()),
          Container(
            padding: const EdgeInsets.all(4),
            color: warnaBackground,
            child: const Align(
                alignment: Alignment.topCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductCard(
                        assetImage: AssetImage("image/burger.jpg"),
                        shopName: "mamang",
                        productName: "Cheese Burger",
                        productPrice: "15.000",
                        distance: "4",
                      ),
                      ProductCard(
                        assetImage: AssetImage("image/burger.jpg"),
                        shopName: "mamang",
                        productName: "Cheese Burger",
                        productPrice: "15.000",
                        distance: "4",
                      ),
                      ProductCard(
                        assetImage: AssetImage("image/burger.jpg"),
                        shopName: "mamang",
                        productName: "Cheese Burger",
                        productPrice: "15.000",
                        distance: "4",
                      ),
                    ])),
          )
        ],
      )),
      bottomNavigationBar: const BottomAppBar(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.store),
            Icon(Icons.event_note_rounded),
            SizedBox(width: 40),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 2.0),
        ),
        child: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            backgroundColor: warnaBackground,
            child: const Image(image: AssetImage("image/cart.png"))),
      ),
    );
  }
}
