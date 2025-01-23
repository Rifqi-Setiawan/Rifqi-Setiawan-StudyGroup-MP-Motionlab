import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_shop_get_c_l_i/app/routes/app_pages.dart';
import 'package:motion_shop_get_c_l_i/app/widgets/custom_button_auth.dart';
import 'package:motion_shop_get_c_l_i/app/widgets/custom_text_field_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
          ),
           Lottie.asset('assets/lottie/lottie_login.json'),
          const Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Happy Shopping All",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Email",
              icon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Password",
              icon: Icon(Icons.password),
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          CustomButtonAuth(onPressed: () {
            Get.toNamed(
              Routes.HOME,
            );
          }, 
          buttonText: "Login"),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account? ",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    Routes.REGISTER
                  );
                },
                child: Text("Register",
                style: TextStyle(
                  color: Color(0xFF00623B),
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
