import 'package:flutter/material.dart';

class Profile_button extends StatelessWidget {
  IconData icon;
  String name;
  Function press;
  double width;
  Profile_button({this.icon, this.name, this.press, this.width});

  // final bool pressAttention;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.grey,
          padding: EdgeInsets.only(
            top: 15,
            bottom: 9,
          ),

          // shadowColor: pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),

          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              size: 30,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: width,
            ),
            // IconButton(
            //     iconSize: 30,
            //     color: Colors.grey,
            //     icon: Icon(Icons.arrow_forward_ios_outlined),
            //     onPressed: () {}),
          ],
        ),
        onPressed: press,
      ),
    );
  }
}
