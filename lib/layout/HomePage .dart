import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maga/modules/cart_module.dart';
import 'package:maga/modules/favorite_module.dart';
import 'package:maga/modules/forgot_password_module.dart';
import 'package:maga/layout/foodPage.dart';
import 'package:maga/modules/login_screen_module.dart';
import 'package:maga/modules/profile_Page_module.dart';
import 'package:maga/modules/Sign_up_module.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:badges/badges.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  static String homePage = 'HomeScreen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int badge = 0;

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    FoodPage(),
    FavoritePage(),

    // SignIn(),
    Cartpage(),

    /// There are Error in forgotpassword page .....
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: _children[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.2)),
              ]),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: GNav(
                // curve: Curves.bounceInOut,
                rippleColor: Colors.grey[300],
                hoverColor: Colors.grey[100],
                gap: 10,
                tabBackgroundColor: Colors.white.withOpacity(.1),
                haptic: true,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                duration: Duration(milliseconds: 400),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                    text: 'Home',
                    backgroundColor: Color(0xff5B37B7),
                  ),
                  GButton(
                    icon: Icons.favorite,
                    iconColor: Color(0xffFC6C26),
                    iconActiveColor: Color(0xffFC6C26),
                    text: 'Likes',
                    backgroundColor: Color(0xFFF6D6EE),
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    iconColor: Colors.black,
                    backgroundColor: Color(0xff842E9E),
                    iconActiveColor: Colors.black,
                    iconSize: 30,
                    text: 'Cart',
                    textColor: Colors.white,
                    leading: Badge(
                      // toAnimate: false,
                      animationDuration: Duration(microseconds: 500),
                      badgeColor: Color(0xffFC6C26),
                      elevation: 0,
                      position: BadgePosition.topStart(top: -10, start: -12),
                      badgeContent: Text(
                        // badge.toString(),
                        '4',

                        style: TextStyle(color: Colors.white),
                      ),
                      child: Icon(
                        LineIcons.shoppingCart,
                        size: 30,
                        color:
                            _selectedIndex == 2 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  GButton(
                    icon: Icons.person_outline,
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                    text: 'Profile',
                    backgroundColor: Color(0xff1194AA),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: onTabTapped,
              )),
        ),
      ),
    );
  }
}
