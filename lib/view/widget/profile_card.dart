import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  // const ProfileCart({Key? key}) : super(key: key);

  String title = '';

  ProfileCard(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textSecondaryStyle.copyWith(fontSize: 14),
          ),
          Spacer(),
          Image.asset(
            'assets/ic_arrow_right_gray.png',
            width: 14,
            height: 14,
          )
        ],
      ),
    );
  }
}
