import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: defaultBorderRadius, vertical: 6),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/ic_logo_circle.png',
                width: 54,
                height: 54,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: textPrimaryStyle.copyWith(fontSize: 15),
                    ),
                    Text(
                      'An indexable collection of objects with a length. Subclasses of this class implement different kinds of lists.',
                      style: textSecondaryStyle.copyWith(fontWeight: light),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // ellipsis
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Now',
                style: textSecondaryStyle.copyWith(
                    fontWeight: light, fontSize: 10),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            // lin under text
            thickness: 1,
            color: lineColor,
          )
        ],
      ),
    );
  }
}
