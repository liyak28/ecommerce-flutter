import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/chat_card.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: textAppBarStyle,
        ),
        elevation: 0, // hide line under app bar
        automaticallyImplyLeading: false, // hide back button
      );
    }

    Widget emptyView() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bg3Color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style:
                    textPrimaryStyle.copyWith(color: whiteColor, fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      backgroundColor: primaryColor),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget chatView() {
      return Container(
        child: Column(
          children: [
            ChatCard(),
            ChatCard(),
            ChatCard(),
          ],
        ),
      );
    }

    return Center(
      child: Column(
        children: [header(), chatView()],
      ),
    );
  }
}
