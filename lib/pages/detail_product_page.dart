import 'package:flutter/material.dart';
import 'package:motion_week_2/class/class_product.dart';

class DetailProductPage extends StatelessWidget {
 final Product product;

  const DetailProductPage({super.key, required this.product});
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    size: 50,
                  ),
                ),
                const Text(
                  "Product",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: product.favorite ? Colors.red : Colors.black,
                  size: 50,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.asset(
                      product.imageUrl,
                      width: double.infinity,
                      height: 401,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "\$ ${product.price}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff00623B),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        product.description),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    width: 381,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff00623B),
                    ),
                    child: const Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
