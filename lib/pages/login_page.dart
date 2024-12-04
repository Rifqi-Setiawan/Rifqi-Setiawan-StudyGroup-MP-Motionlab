import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_week_2/widgets/custom_button_auth.dart';
import 'package:motion_week_2/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/loginIlustration.png"),
          Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Happy Shopping All",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),

          SizedBox(
            height: 18,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Email",
              icon: Icon(Icons.email),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Password",
              icon: Icon(Icons.password),
            ),
          ),

          CustomButtonAuth(onPressed: () {}, buttonText: "Login")
        ],
      ),
    );
  }
}
