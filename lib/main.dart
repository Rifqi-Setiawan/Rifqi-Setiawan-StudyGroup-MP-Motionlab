import 'package:flutter/material.dart';
import 'package:motion_week_2/pages/cart_page.dart';
import 'package:motion_week_2/pages/home_page.dart';
import 'package:motion_week_2/pages/invoice_page.dart';
import 'package:motion_week_2/pages/login_page.dart';
import 'package:motion_week_2/pages/register_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove(); 
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => const RegisterPage(),
        '/cart': (context) => CartPage(),
        '/invoice': (context) => InvoicePage(),
      },
    );
  }
}
