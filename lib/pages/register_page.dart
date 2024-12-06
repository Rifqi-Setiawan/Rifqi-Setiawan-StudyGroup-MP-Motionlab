import 'package:flutter/material.dart';
import 'package:motion_week_2/widgets/custom_button_auth.dart';
import 'package:motion_week_2/widgets/custom_text_field_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 140,
          ),
          const Text(
            "Register",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          const Text(
            "Create your account for Happy Shopping",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),

          const SizedBox(
            height: 54,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Full Name",
              icon: Icon(Icons.person),
            ),
          ),

          const SizedBox(
            height: 20,
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
              icon: Icon(Icons.lock),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: CustomTextFieldWidget(
              hintText: "Confirm Password",
              icon: Icon(Icons.lock),
            ),
          ),

          const SizedBox(
            height: 42,
          ),
          CustomButtonAuth(onPressed: () {}, buttonText: "Register"),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
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
                  Navigator.pop(context);
                },
                child: Text("Login",
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