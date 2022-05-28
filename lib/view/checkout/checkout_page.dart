import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/appbar_primary.dart';
import 'package:ecommerce_flutter/view/widget/cart_card.dart';
import 'package:ecommerce_flutter/view/widget/title_home.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customNavigationView() {
      return Container(
        height: 120,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Divider(
              thickness: 1,
              color: lineColor,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 55,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout_success');
                },
                style: buttonPrimaryStyle,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Checkout Now',
                    style: textButtonStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget productOrderList() {
      return Container(
        child: Column(
          children: [
            CartCard('Terrex Urban Low', 'Rp 2.000.000',
                'assets/img_shoes_sample.png', 10)
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TitleHome('List Items'), productOrderList()],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bg3Color,
        appBar: AppBar(
          backgroundColor: bg1Color,
          centerTitle: true,
          title: Text(
            'Checkout',
          ),
          elevation: 0,
        ),
        body: content(),
        bottomNavigationBar: customNavigationView(),
      ),
    );
  }
}
