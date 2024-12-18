import 'package:flutter/material.dart';
import 'package:motion_week_2/controllers/cart_controller.dart';
import 'package:motion_week_2/widgets/custom_button_green.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  var Cart = Get.put(CartController());
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 50,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: ListView(
                  children: Cart.Cart.map((product) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 37, top: 10),
                      child: Container(
                        height: 115,
                        margin: EdgeInsets.only(bottom: 31),
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFAAAAAA).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset(
                              product.imageURL,
                              width: 92,
                              height: 92,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    product.title,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '\$${product.price}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF00623B),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xFF00623B),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Cart.decrementQuantity(product);
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Color(0xFF43936C),
                                              size: 16,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Obx(() => Text(
                                                "${product.quantity.value}",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                ),
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Cart.incrementQuantity(product);
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Color(0xFF43936C),
                                              size: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child:
                    CustomButtonGreen(onPressed: () {
                      Navigator.pushNamed(context, "/invoice");
                    }, buttonText: "Buy Now"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
