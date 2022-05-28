import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: textPrimaryStyle.copyWith(
                  fontSize: 24, fontWeight: semi_bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sign In to Countinue',
              style: textSubHeaderStyle,
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: textHeaderSecondaryStyle,
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bg2Color,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/ic_email.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style:
                            textPrimaryStyle, // agar input text sesuai dengan style karena default nya berwarna hitam
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: textSubHeaderStyle,
                        ),
                      ),
                    ), // berfungsi agar TextFormField lebar nya selebar ruang yang tersisa
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: textHeaderSecondaryStyle,
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bg2Color,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/ic_password.png',
                      width: 14,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText:
                            true, // merubah menjadi bintang password hide
                        style:
                            textPrimaryStyle, // agar input text sesuai dengan style karena default nya berwarna hitam

                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: textSubHeaderStyle,
                        ),
                      ),
                    ), // berfungsi agar TextFormField lebar nya selebar ruang yang tersisa
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget registerButton() {
      return Container(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Sign In',
            style: textButtonStyle,
          ),
          style: buttonPrimaryStyle.copyWith(),
        ),
      );
    }

    Widget footer() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: textSubHeaderStyle,
            ),
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                "Sign up",
                style: textPriceStyle.copyWith(color: primaryColor),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bg1Color,
        resizeToAvoidBottomInset:
            false, // mengamankan layout saat menampilkan keyboard input data
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: 50,
              ),
              emailInput(),
              SizedBox(
                height: 20,
              ),
              passwordInput(),
              SizedBox(
                height: 30,
              ),
              registerButton(),
              Spacer(),
              footer(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
