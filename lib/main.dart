import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.chevron_left),
                  Text(
                    "Product",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Image.asset(
                        "assets/images/jam.png",
                        width: double.infinity,
                        height: 401,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Mi Band 8 Pro",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 8),
                      padding: EdgeInsets.only(left: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "\$54.00",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff00623B),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 15),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                          "Built for life and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jacke uilt for lif uilt for life and made to last, this full-zip corduroy jackeuilt for life and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jackeuilt for life and made to last, this full-zip corduroy jackeuilt for life and made to last, this full-zip corduroy jackeuilt for life and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jackee and made to last, this full-zip corduroy jacke uilt for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless."),
                          margin: EdgeInsets.only(bottom: 10),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 381,
                  height: 55,
                  child: Center(
                    child: Text(
                      "Add to bag",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff00623B),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
