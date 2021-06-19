import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:maga/modules/login_screen_module.dart';
import 'package:maga/shared/compones/widgets/Image_profile.dart';
import 'package:maga/shared/compones/widgets/Text_Form_Widget.dart';
import 'package:maga/shared/compones/widgets/contiune_button.dart';
import 'package:maga/shared/compones/widgets/paaswordform.dart';
                                     
class SignIn extends StatefulWidget {
  static const String signIn = 'SignIn';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Lobster-Regular',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Image_Profile(),
              Text_Form_Widget(
                lableText: 'First Name ',
                hintText: 'Enter your First Name ',
                prefixIcon: Icon(FontAwesomeIcons.userAlt),
              ),
              SizedBox(
                height: 10,
              ),
              Text_Form_Widget(
                lableText: 'Last Name ',
                hintText: 'Enter your Last Name',
                prefixIcon: Icon(FontAwesomeIcons.userAlt),
              ),
              SizedBox(
                height: 10,
              ),
              Text_Form_Widget(
                lableText: 'Email ',
                hintText: 'Enter your Email',
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: 10,
              ),
              PasswordForm(),
              Continue_Button(
                nameButton: 'Continue',
                page: Login(),
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => Login(),
                          ),
                        );
                      },
                      child: Text(
                        "Sing In",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
