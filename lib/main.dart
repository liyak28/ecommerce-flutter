import 'package:ecommerce_flutter/view/auth/login_page.dart';
import 'package:ecommerce_flutter/view/auth/register_page.dart';
import 'package:ecommerce_flutter/view/cart/cart_page.dart';
import 'package:ecommerce_flutter/view/chat/chat_detail_page.dart';
import 'package:ecommerce_flutter/view/checkout/checkout_page.dart';
import 'package:ecommerce_flutter/view/checkout/checkout_success_page.dart';
import 'package:ecommerce_flutter/view/home/main_page.dart';
import 'package:ecommerce_flutter/view/onboarding/splash_page.dart';
import 'package:ecommerce_flutter/view/product/product_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => MainPage(),
        '/product_detail': (context) => ProductDetailPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout_success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
