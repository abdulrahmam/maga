import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maga/modules/login_screen_module.dart';
import 'package:maga/modules/Sign_up_module.dart';
import 'package:maga/modules/verify_phone_number_module.dart';
import 'package:maga/shared/compones/widgets/Text_Form_Widget.dart';
import 'package:maga/shared/compones/widgets/contiune_button.dart';

class Forgotpassword extends StatefulWidget {
  static const String forgotpassword = '/Forgotpassword ';

  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Forgot Passsword',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Lobster-Regular',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Please enter your email address and we'll send you a link to reset your password.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontFamily: 'Lobster-Regular',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Text_Form_Widget(
              hintText: 'Enter your Number',
              prefixIcon: Icon(Icons.phone),
              lableText: 'Mobile Number',
            ),
            // TextFormField(
            //   keyboardType: TextInputType.number,
            //   style: TextStyle(
            //     color: Colors.black,
            //   ),
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.phone),
            //     labelText: 'Enter your Number',
            //     hintText: 'Mobile Number',
            //     floatingLabelBehavior: FloatingLabelBehavior.always,
            //     contentPadding: EdgeInsets.symmetric(
            //       horizontal: 42,
            //       vertical: 20,
            //     ),
            //     fillColor: Colors.grey,
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(color: Theme.of(context).cardColor),
            //       borderRadius: BorderRadius.circular(10),
            //       gapPadding: 10,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Continue_Button(
              nameButton: 'Continue',
              page: VerifyPassword(),
            ),
            SizedBox(
              height: 210,
            ),
            // Spacer(flex: 5),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'SignIn');
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
