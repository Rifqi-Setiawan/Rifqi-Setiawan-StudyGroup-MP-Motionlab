import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_week_2/controllers/cart_controller.dart';

class InvoicePage extends StatelessWidget {
  var cart = Get.put(CartController());
  InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice',
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white, 
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  ),
                ]),
                child: Column(
                  children: [
                    Lottie.asset('assets/lottie/lottie_checklist.json',
                        height: 160, width: 160),
                    Text(
                      "Transaction success",
                      style: TextStyle(
                        fontSize: 18.6,
                      ),
                    ),
                    Text(
                      "\$${cart.calculateTotalPrice().toString()}",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.07),
                      thickness: 1.13,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Invoice Number",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "000085752257",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction Date",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "16 June 2023",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Method",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white, 
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(1, 1),
                  ),
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Pesanan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Name",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "Rifqi Setiawan",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Email",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "rifqis232@gmail.com",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13.54,
                          ),
                        ),
                        Text(
                          "\$${cart.calculateTotalPrice().toString()}",
                          style: TextStyle(
                              fontSize: 13.54,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.75)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
