import 'package:flutter/material.dart';

class SplashWiget extends StatelessWidget {
  final String text;
  final String image;
  SplashWiget({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: 'Lobster-Regular',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              image,
              height: 270,
              width: 230,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
