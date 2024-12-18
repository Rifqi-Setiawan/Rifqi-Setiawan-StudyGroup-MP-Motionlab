import 'package:flutter/material.dart';

class NavbarBottom extends StatelessWidget {
  const NavbarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 70,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF00623B),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            );
  }
}