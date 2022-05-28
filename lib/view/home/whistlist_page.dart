import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/appbar_home.dart';
import 'package:ecommerce_flutter/view/widget/empty_view.dart';
import 'package:flutter/material.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBarHome('Favorite Shoes'),
          EmptyView(' You dont have dream shoes?',
              'Lets find your favorite shoes', 'assets/ic_love_primary.png'),
        ],
      ),
    );
  }
}
