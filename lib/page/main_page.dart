import 'package:flutter/material.dart';
import 'package:shamo_flutter/page/favorite_page.dart';
import 'package:shamo_flutter/page/home_page.dart';
import 'package:shamo_flutter/page/message_page.dart';
import 'package:shamo_flutter/page/profile_page.dart';
import 'package:shamo_flutter/theme/color.dart';

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
          'assets/icon_cart.png',
          width: 24,
          height: 24,
        ),
        backgroundColor: secondaryColor,
      );
    }

    Widget customButtonNavigation() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 24,
                      color: currentIndex == 0 ? primaryColor : greyColor,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 24,
                        color: currentIndex == 1 ? primaryColor : greyColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/icon_wishlist.png',
                        width: 24,
                        color: currentIndex == 2 ? primaryColor : greyColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/icon_profile.png',
                        width: 24,
                        color: currentIndex == 3 ? primaryColor : greyColor,
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MessagePage();
        case 2:
          return FavoritePage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNavigation(),
      body: body()
    );
  }
}
