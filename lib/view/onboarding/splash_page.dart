import 'dart:async';

import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/login', ((route) => false)),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo_app.png'),
            ),
          ),
        ),
      ),
    );
  }
}
