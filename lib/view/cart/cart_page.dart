import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/cart_card.dart';
import 'package:ecommerce_flutter/view/widget/empty_view.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  // const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        centerTitle: true,
        title: Text(
          'Your Cart',
        ),
        elevation: 0,
      );
    }

    Widget cartView() {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: defaultMargin,
              ),
              CartCard('Terrex Urban Low', 'Rp 2.000.000',
                  'assets/img_shoes_sample.png', 1),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            cartView()
            // EmptyView('Opss! Your Cart is Empty',
            //     'Let\'s find your favorite shoes', 'assets/ic_cart_troller.png'),
          ],
        ),
      );
    }

    Widget customNavigationView() {
      return Container(
        height: 165,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Subtotal',
                    style: textPrimaryStyle,
                  ),
                  Spacer(),
                  Text(
                    '\$ 20.000',
                    style: textPriceStyle.copyWith(
                        fontWeight: semi_bold, fontSize: 16),
                  )
                ],
              ),
            ),
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
                    Navigator.pushNamed(context, '/checkout');
                  },
                  style: buttonPrimaryStyle,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Continue To Checkout',
                          style: textButtonStyle,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          color: whiteColor,
                        )
                      ],
                    ),
                  )),
            )
          ],
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
            'Your Cart',
          ),
          elevation: 0,
        ),
        body: content(),
        bottomNavigationBar: customNavigationView(),
      ),
    );
  }
}
