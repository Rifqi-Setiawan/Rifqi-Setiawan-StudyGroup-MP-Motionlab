import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          children: [
            // APP BAR START
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Image.asset(
                  "assets/images/logo.png",
                  width: 47,
                  height: 47,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/tas.png",
                  width: 23,
                  height: 23,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            // APP BAR END

            SizedBox(
              height: 58,
            ),

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our way of loving \nyou back",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // SEARCH INPUT START
            Container(
              width: 382,
              height: 53,
              decoration: BoxDecoration(
                color: Color(0xFF868A91).withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
                
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 23),
                  labelText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    ),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  )
                ),
              ),
            ),
            // SEARCH INPUT END

             SizedBox(
              height: 32,
            ),

            // KATEGORI START
            Row(
              children: [
                
              ],
            )
          ],
        ),
      )),
    );
  }
}
