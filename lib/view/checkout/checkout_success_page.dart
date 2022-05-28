import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/appbar_primary.dart';
import 'package:flutter/material.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ic_success.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'You made a transaction',
              style: textHeaderStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we \nprepare your dream shoes',
              style: textSecondaryStyle,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 196,
              height: 44,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: buttonPrimaryStyle,
                  child: Text(
                    'View My Order',
                    style: textButtonStyle,
                  )),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBarPrimary('Checkout Success', false),
      backgroundColor: bg3Color,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: content(),
        ),
      ),
    );
  }
}
