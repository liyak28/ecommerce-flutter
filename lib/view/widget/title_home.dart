import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  String title = '';

  TitleHome(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Text(
        title,
        style: textHeaderStyle,
      ),
    );
  }
}
