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
    return FutureBuilder<bool>(
        future: controller.checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.data == true) {
            // Jika sudah login, arahkan ke dashboard
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Get.offNamed('/home');
            });
            return const SizedBox(); // Tidak perlu menampilkan apa-apa jika sudah login
          }
          return GetBuilder<LoginController>(
            init: LoginController(),
            builder: (_) {
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23),
                      child: CustomTextFieldWidget(
                        hintText: "Email",
                        icon: Icon(Icons.email),
                        isPassword: false,
                        controller: controller.usernameController,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23),
                      child: CustomTextFieldWidget(
                        hintText: "Password",
                        icon: Icon(Icons.password),
                        isPassword: true,
                        controller: controller.passwordController,
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                     controller.isLoading
                          ? const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 4,
                              ),
                              child: CircularProgressIndicator(
                                color: Color(0xFF00623B),
                              ),
                            )
                          : CustomButtonAuth(
                              buttonText: 'Login',
                              onPressed: () {
                                controller.login();
                                // Get.offAllNamed(Routes.DASHBOARD);
                              },
                            ),
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
                            Get.toNamed(Routes.REGISTER);
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Color(0xFF00623B),
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
