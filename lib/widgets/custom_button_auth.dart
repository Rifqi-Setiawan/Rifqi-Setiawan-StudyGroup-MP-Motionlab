import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButtonAuth({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        minimumSize: Size(381, 55),
        shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
        backgroundColor: Color(0xFF00623B),

      ),
      child: Text(buttonText),
    );
  }
}
