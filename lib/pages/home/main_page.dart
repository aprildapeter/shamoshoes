import 'package:flutter/material.dart';
import 'package:shamoshoes/pages/home/chat_page.dart';
import 'package:shamoshoes/pages/home/home_page.dart';
import 'package:shamoshoes/pages/home/profile_page.dart';
import 'package:shamoshoes/pages/home/whislist_page.dart';
import 'package:shamoshoes/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

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
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget body (){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WhislistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
      }
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor4, items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  color: currentIndex == 0 ? primaryColor : secondaryTextColor,
                  width: 21,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_chat.png',
                  color: currentIndex == 1 ? primaryColor : secondaryTextColor,
                  width: 21,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  color: currentIndex == 2 ? primaryColor : secondaryTextColor,

                  width: 21,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  color: currentIndex == 3 ? primaryColor : secondaryTextColor,

                  width: 21,
                ),
                label: ''),
          ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      bottomNavigationBar: customButtonNav(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: body(),
    );
  }
}
