import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  String title = '';

  AppBarHome(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bg1Color,
      centerTitle: true,
      title: Text(
        title,
        style: textAppBarStyle,
      ),
      elevation: 0, // hide line under app bar
      automaticallyImplyLeading: false, // hide back button
    );
  }
}
