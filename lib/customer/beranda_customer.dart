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
            Container(
              padding: const EdgeInsets.only(left: 5),
              width: MediaQuery.of(context).size.width * 0.77,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                        blurRadius: 2)
                  ]),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search_outlined),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) {
                  return const MenuCustomer();
                })));
              },
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
              height: 200,
              color: warnaBackground,
              child: const CategoryIcon()),
          Container(
            padding: const EdgeInsets.all(4),
            color: warnaBackground,
            child: const Align(
                alignment: Alignment.topCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductCard(
                        assetImage: AssetImage("image/vector.jpeg"),
                        productName: "Oppo",
                        productPrice: "Rp. 3.999.000,00",
                      ),
                      ProductCard(
                        assetImage: AssetImage("image/vector.jpeg"),
                        productName: "Oppo",
                        productPrice: "Rp. 3.999.000,00",
                      ),
                    ])),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: colorprimar,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.store),
            Icon(Icons.event_note_rounded),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
