import 'package:flutter/material.dart';
import 'package:motion_week_2/controllers/cart_controller.dart';
import 'package:motion_week_2/models/product_model.dart';
import 'package:motion_week_2/widgets/custom_button_green.dart';
import 'package:get/get.dart';

class DetailProductPage extends StatelessWidget {
  final ProductModel product;
  var Cart = Get.put(CartController());
  DetailProductPage({super.key, required this.product});
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
                Obx(() => Icon(
                      Icons.favorite,
                      color: product.favorite.value ? Colors.red : Colors.black,
                      size: 50,
                    )),
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
                    child: Text(product.description),
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
                CustomButtonGreen(onPressed: () {
                  Cart.addCart(product.imageUrl, product.title, product.price, 1.obs);
                  Navigator.pushNamed(context, "/cart");
                }, buttonText: "Add to Cart"),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
