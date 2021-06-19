import 'package:flutter/material.dart';
import 'package:maga/models/login_screen.dart';
import 'package:maga/shared/compones/widgets/Text_Form_Widget.dart';
import 'package:maga/shared/compones/widgets/paaswordform.dart';

class ResetPassword extends StatelessWidget {
  static const resetPassword = 'resetPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 50,
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
              SizedBox(
                width: 50,
              ),
              //
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '   Create a new Password',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'your new password must be different from  previous used password.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PasswordForm(),
          Text_Form_Widget(
            lableText: 'Confirm your New Password',
            hintText: 'Confirm your New Password',
            // prefixIcon: Icon(Icons.),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffFF4500),
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 90, right: 90),
              shadowColor: Color(0xffFF4500),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'Login');
            },
          ),
        ])));
  }
}
