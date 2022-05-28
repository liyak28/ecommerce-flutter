import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/home/chat_page.dart';
import 'package:ecommerce_flutter/view/home/home_page.dart';
import 'package:ecommerce_flutter/view/home/profile_page.dart';
import 'package:ecommerce_flutter/view/home/whistlist_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/ic_cart_white.png',
          width: 20,
        ),
      );
    }

    Widget navigationBottomBar() {
      return ClipRRect(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bg4Color,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/ic_home_secondary.png',
                      width: 21,
                      color:
                          currentIndex == 0 ? primaryColor : unselectBarColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/ic_chat_secondary.png',
                      width: 21,
                      color:
                          currentIndex == 1 ? primaryColor : unselectBarColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/ic_love_secondary.png',
                      width: 21,
                      color:
                          currentIndex == 2 ? primaryColor : unselectBarColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/ic_profile_secondary.png',
                      width: 21,
                      color:
                          currentIndex == 3 ? primaryColor : unselectBarColor,
                    ),
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }

    Widget currentPageView() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WhistlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
        backgroundColor: bg1Color,
        // floatingActionButton: cartButton(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: navigationBottomBar(),
        body: currentPageView());
  }
}
