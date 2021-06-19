import 'package:flutter/material.dart';

class Continue_Button extends StatelessWidget {
  String nameButton;
  Widget page;

  Continue_Button({this.nameButton, this.page});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 60,
        width: 350,
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => page,
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0XFF292F38),
          child: Text(
            nameButton,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'Lobster-Regular',
              letterSpacing: 3,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      //
    );
  }
}
