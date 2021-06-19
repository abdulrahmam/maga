import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:maga/modules/cart_module.dart';
import 'package:maga/modules/notification_module.dart';
import 'package:maga/shared/compones/widgets/profileButton.dart';

class Profile extends StatefulWidget {
  static const profile = 'profile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool pressAttention = false;
  String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    iconSize: 30,
                    color: Colors.grey,
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/me.jpeg"),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Abdo',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      // fontFamily: 'Lobster-Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Profile_button(
              name: 'My Order',
              icon: LineIcons.shoppingBag,
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Cartpage(),
                  ),
                );
              },
              width: MediaQuery.of(context).size.width * .43,
            ),
            Profile_button(
              name: 'Notifcation',
              icon: LineIcons.bell,
              press: () {
                Navigator.pushNamed(context, 'notifcation');
                //
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => NotifcationPage(),
                //   ),
                // );
              },
              width: MediaQuery.of(context).size.width * .39,
            ),
            Profile_button(
              name: 'Payment ',
              icon: Icons.payment,
              press: () {},
              width: MediaQuery.of(context).size.width * .40,
            ),
            Profile_button(
              name: 'Logout',
              icon: Icons.logout,
              press: () {},
              width: MediaQuery.of(context).size.width * .48,
            ),
          ]),
        ),
      ),
    );
  }
}
