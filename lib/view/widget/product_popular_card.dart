import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class ProductPopularCard extends StatelessWidget {
  const ProductPopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product_detail');
      },
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: bg6Color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/img_shoes_sample.png',
                    width: 215,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hiking',
                          style: textSubHeaderStyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'COURT VISION 2.0',
                          style: textHeaderSecondaryStyle.copyWith(
                              color: textBlackColor),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Rp 500.000',
                          style: textPriceStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
