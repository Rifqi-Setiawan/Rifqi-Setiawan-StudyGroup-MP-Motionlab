import 'package:flutter/material.dart';
import 'package:motion_week_2/pages/detail_product_page.dart';
import '../class/class_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentCategories = "All";
  final List<String> categories = ["All", "Watch", "Shirt", "Shoes", "Food"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // APP BAR START
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu),
                      Image.asset(
                        "assets/images/logo.png",
                        width: 47,
                        height: 47,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/tas.png",
                        width: 23,
                        height: 23,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  // APP BAR END

                  const SizedBox(height: 58),

                  const Text(
                    "Our way of loving \nyou back",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // SEARCH INPUT START
                  Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: const Color(0xFF868A91).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 23),
                        labelText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  // SEARCH INPUT END

                  const SizedBox(height: 32),

                  // KATEGORI START
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentCategories = categories[index];
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: categories[index] == currentCategories
                                  ? const Color(0xFF3A5A40)
                                  : const Color(0xFF868A91).withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                categories[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // KATEGORI END
                ],
              ),
            ),

            const SizedBox(height: 28),

            // LIST PRODUCT START
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Our best seller",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 18,
                          mainAxisExtent: 251,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/detailProduct');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 2), 
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(20),
                                      bottom: Radius.circular(20),
                                    ),
                                    child: Image.asset(
                                      product.imageUrl,
                                      height: 187,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7.8),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${product.price.toString()}',
                                          style: const TextStyle(
                                            color: Color(0xFF00623B),
                                            fontSize: 17.35,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Icon(Icons.favorite)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // LIST PRODUCT END

            // NAV BOTTOM START
            Container(
              height: 70,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF00623B),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home, // Hati tidak terisi
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.payment, // Hati tidak terisi
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.favorite_border, // Hati tidak terisi
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}