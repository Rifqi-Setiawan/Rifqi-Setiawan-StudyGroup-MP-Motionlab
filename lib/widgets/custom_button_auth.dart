import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButtonAuth({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(381, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: const Color(0xFF00623B), 
        foregroundColor: Colors.white, 
      ),
      child: Text(buttonText),
    );
  }
}
