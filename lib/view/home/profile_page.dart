import 'package:ecommerce_flutter/style/theme.dart';
import 'package:ecommerce_flutter/view/widget/profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              Image.asset(
                'assets/ic_profile_default.png',
                width: 64,
                height: 64,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Himawan',
                      style: textHeaderStyle,
                    ),
                    Text('@himawan.masyaid', style: textSecondaryStyle)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                child: Image.asset(
                  'assets/ic_logout.png',
                  width: 20,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget profileView() {
      return Container(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: textHeaderSecondaryStyle.copyWith(
                  fontWeight: semi_bold, fontSize: 18),
            ),
            SizedBox(
              height: 6,
            ),
            ProfileCard('Edit Profile'),
            ProfileCard('Your Orders'),
            ProfileCard('Help'),
            Text(
              'General',
              style: textHeaderSecondaryStyle.copyWith(
                  fontWeight: semi_bold, fontSize: 18),
            ),
            SizedBox(
              height: 6,
            ),
            ProfileCard('Privacy & Policy'),
            ProfileCard('Term of Service'),
            GestureDetector(
              onTap: () {},
              child: ProfileCard('Rate App'),
            ),
          ],
        ),
      );
    }

    Widget dropdown() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bg3Color,
        body: Column(
          children: [header(), profileView(), dropdown()],
        ),
      ),
    );
  }
}
