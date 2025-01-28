import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/widgets/custom_button_green.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailProductController>(
      init: DetailProductController(),
      builder: (_) {
        return Obx(() => controller.isLoading.value
            ? const Material(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Scaffold(
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
                            color: Colors.red,
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
                              child: Image.network(
                                controller.detailProduct.thumbnail ?? "",
                                width: double.infinity,
                                height: 401,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                controller.detailProduct.title ?? "",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "\$ ${controller.detailProduct.price ?? ""}",
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
                                  controller.detailProduct.description ?? ""),
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
                          CustomButtonGreen(buttonText: "Add to Cart"),
                        ],
                      ),
                    ),
                  ],
                )),
              ));
      },
    );
  }
}
