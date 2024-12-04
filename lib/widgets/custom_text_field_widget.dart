import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String? hintText;
  final Icon? icon;
  CustomTextFieldWidget({super.key, this.hintText, this.icon});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
        ),
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
         focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );
  }
}