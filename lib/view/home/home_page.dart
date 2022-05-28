import 'package:ecommerce_flutter/model/local/product.dart';
import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/product_new_card.dart';
import 'package:ecommerce_flutter/view/widget/product_popular_card.dart';
import 'package:ecommerce_flutter/view/widget/title_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo, Pengguna',
                  style: textHeaderStyle,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '@pengguna',
                  style: textSecondaryStyle,
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: Image.asset(
                'assets/ic_cart_white.png',
                width: 34,
                height: 34,
              ),
            ),
          ],
        ),
      );
    }

    Widget categorySelected() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            color: primaryColor),
        child: Text(
          'Semua',
          style: textPrimaryStyle.copyWith(fontWeight: medium, fontSize: 13),
        ),
      );
    }

    Widget categoryUnSelected() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            border: Border.all(
              color: lineColor,
            ),
            color: transparantColor),
        child: Text(
          'Running',
          style: textSecondaryStyle.copyWith(
              fontWeight: medium, fontSize: 13, color: textSecondaryColor),
        ),
      );
    }

    Widget category() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              categorySelected(),
              SizedBox(
                width: 16,
              ),
              categoryUnSelected(),
              SizedBox(
                width: 16,
              ),
              categoryUnSelected(),
              SizedBox(
                width: 16,
              ),
              categoryUnSelected(),
              SizedBox(
                width: 16,
              ),
              categoryUnSelected(),
            ],
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              ProductPopularCard(),
              ProductPopularCard(),
              ProductPopularCard(),
            ],
          ),
        ),
      );
    }

    Widget newProduct() {
      return Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductNewCard(),
              ProductNewCard(),
              ProductNewCard(),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bg3Color,
        body: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              header(),
              SizedBox(
                height: 30,
              ),
              category(),
              TitleHome('Popular Product'),
              popularProduct(),
              TitleHome('New Arrival Product'),
              newProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
