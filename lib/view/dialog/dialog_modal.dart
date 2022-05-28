import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class DialogFailed extends StatelessWidget {
  const DialogFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: bg3Color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/ic_success.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Hooree',
                    style: textPrimaryStyle.copyWith(
                        fontWeight: semi_bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Item added successfully',
                    style: textSecondaryStyle,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/cart');
                        },
                        style: buttonPrimaryStyle,
                        child: Text(
                          'View My Cart',
                          style: textButtonStyle,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Container();
  }
}
