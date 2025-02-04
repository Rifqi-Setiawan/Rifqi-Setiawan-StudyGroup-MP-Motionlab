import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String? hintText;
  Icon? icon;
  ValueChanged<String>? onChanged;
  CustomTextFieldWidget({super.key, this.hintText, this.icon, this.onChanged});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
         focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );
  }
}