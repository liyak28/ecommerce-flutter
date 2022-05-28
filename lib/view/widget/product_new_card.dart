import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class ProductNewCard extends StatelessWidget {
  const ProductNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultMargin),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              color: bg6Color,
            ),
            child: Image.asset(
              'assets/img_shoes_sample.png',
              width: 120,
              height: 120,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            // dibungkus dengan expanded agar lebar nya selebar ruang yang tersisa
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Category',
                  style: textSecondaryStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'COURT VISION 2.0',
                  style: textHeaderSecondaryStyle.copyWith(color: whiteColor),
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
          )
        ],
      ),
    );
  }
}
