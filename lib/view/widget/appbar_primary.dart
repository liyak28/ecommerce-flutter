import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

PreferredSize AppBarPrimary(String title, bool isShowButton) {
  return PreferredSize(
    child: AppBar(
      backgroundColor: bg1Color,
      centerTitle: true,
      automaticallyImplyLeading: isShowButton,
      title: Text(
        title,
      ),
      elevation: 0,
    ),
    preferredSize: Size.fromHeight(60),
  );
}
