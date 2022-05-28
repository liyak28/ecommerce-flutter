import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  // const EmptyView({Key? key}) : super(key: key);

  String title = '';
  String description = '';
  String image = '';

  EmptyView(this.title, this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bg3Color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: textPrimaryStyle.copyWith(color: whiteColor, fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              description,
              style: textSecondaryStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Expolre Store',
                  style: textButtonStyle,
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    backgroundColor: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
