import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: textPrimaryStyle.copyWith(
                  fontSize: 24, fontWeight: semi_bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: textSubHeaderStyle,
            )
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
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
                      'assets/ic_username.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: textPrimaryStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Full Name',
                            hintStyle: textSubHeaderStyle),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
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
                      'assets/ic_dots.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: textPrimaryStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Username',
                            hintStyle: textSubHeaderStyle),
                      ),
                    ),
                  ],
                ),
              ),
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
                        style: textPrimaryStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address',
                            hintStyle: textSubHeaderStyle),
                      ),
                    ),
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
                    Image.asset(
                      'assets/ic_password.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: textPrimaryStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Password',
                            hintStyle: textSubHeaderStyle),
                      ),
                    ),
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
          onPressed: () {},
          child: Text(
            'Register',
            style: textButtonStyle,
          ),
          style: buttonPrimaryStyle,
        ),
      );
    }

    Widget footer() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: textSubHeaderStyle,
            ),
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // untuk back ke screen sebelumnya
              },
              child: Text(
                "Sign In",
                style: textPriceStyle.copyWith(color: primaryColor),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg1Color,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              header(),
              SizedBox(
                height: 50,
              ),
              nameInput(),
              SizedBox(
                height: 20,
              ),
              usernameInput(),
              SizedBox(
                height: 20,
              ),
              emailInput(),
              SizedBox(
                height: 20,
              ),
              passwordInput(),
              SizedBox(
                height: 40,
              ),
              registerButton(),
              Spacer(),
              footer(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
