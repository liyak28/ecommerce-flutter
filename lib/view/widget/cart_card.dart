import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  // const CartCard({ Key? key }) : super(key: key);

  int totalOrder = 1;
  String imageProduct = "assets/img_shoes_sample.png";
  String name = "Terrex Urban Low";
  String price = "Rp 200.000";
  int orderTotal = 1;

  CartCard(this.name, this.price, this.imageProduct, this.orderTotal);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        color: bg4Color,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                  color: bg6Color,
                ),
                child: Image.asset(
                  imageProduct,
                  width: 60,
                  height: 60,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                width: defaultMargin,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: textHeaderSecondaryStyle.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      price,
                      style: textPriceStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/ic_trash_red.png',
                    width: 10,
                    height: 12,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Remove',
                    style: textSecondaryStyle.copyWith(
                        color: alertColor, fontWeight: light, fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (orderTotal > 1) {
                        orderTotal--;
                      }
                    },
                    child: Image.asset(
                      'assets/ic_min.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    orderTotal.toString(),
                    style: textPrimaryStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      orderTotal++;
                    },
                    child: Image.asset(
                      'assets/ic_add.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
