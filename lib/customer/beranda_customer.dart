import 'package:flutter/material.dart';
import 'package:project_1/color.dart';
import 'package:project_1/customer/category_icon.dart';
import 'package:project_1/customer/event_beranda_customer.dart';
import 'package:project_1/chat.dart';
import 'package:project_1/customer/keranjang.dart';
import 'package:project_1/customer/profile.dart';
import 'package:project_1/produk/produk_view.dart';

class BerandaCustomer extends StatelessWidget {
  const BerandaCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 2,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  icon: Icon(Icons.shopping_cart_outlined,
                      color: warnaBackground),
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Keranjang();
                    })));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat_outlined, color: warnaBackground),
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Chat();
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
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 230,
              color: warnaBackground,
              child: Stack(children: [
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: diskon.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: diskon[index],
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 177,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari...',
                        prefixIcon: const Icon(Icons.search),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              color: warnaBackground,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Kategori :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.green,
                        onTap: () {},
                        child: const Center(
                            child: Text(
                          "SEMUA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(color: warnaBackground, child: const CategoryIcon()),
            Container(
              color: warnaBackground,
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rekomendasi :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.green,
                        onTap: () {},
                        child: const Center(
                            child: Text(
                          "SEMUA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(4),
                color: warnaBackground,
                child: const Productview())
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const ProfileCustomer();
                  })));
                },
                icon: const Icon(Icons.store),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const ProfileCustomer();
                  })));
                },
                icon: const Icon(Icons.event_note_rounded),
              ),
              const SizedBox(width: 40),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const ProfileCustomer();
                  })));
                },
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const ProfileCustomer();
                  })));
                },
                icon: const Icon(Icons.person),
              ),
            ],
          ),
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
          child: const Image(image: AssetImage("image/cart.png")),
        ),
      ),
    );
  }
}
