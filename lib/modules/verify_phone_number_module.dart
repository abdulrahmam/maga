import 'package:flutter/material.dart';
import 'package:maga/models/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:maga/modules/resetpassword_module.dart';

class VerifyPassword extends StatefulWidget {
  static const String verifyPassword = 'verifyPassword';

  // final String phoneNumber;

  // PinCodeVerificationScreen(this.phoneNumber);

  @override
  _VerifyPasswordState createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
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
                  Text(
                    'Verify Phone Number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    // SizedBox(height: 30),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      child: Image.asset(
                        "assets/image/otp.png",
                        // animation: "otp",
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Phone Number Verification',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 8),
                      child: RichText(
                        text: TextSpan(
                            text: "Enter the code sent to ",
                            children: [
                              TextSpan(
                                  text: '5555555',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,
                            obscureText: false,
                            obscuringCharacter: '*',
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v.length < 4) {
                                return "I'm from validator";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              borderRadius: BorderRadius.circular(1),
                              borderWidth: 3,
                              inactiveColor: Colors.red,
                              selectedFillColor: Colors.white,
                              fieldHeight: 60,
                              fieldWidth: 50,
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              selectedColor: Colors.green,
                            ),
                            cursorColor: Colors.black54,
                            animationDuration: Duration(milliseconds: 300),
                            textStyle: TextStyle(fontSize: 20, height: 1.6),
                            backgroundColor: Colors.transparent,
                            enableActiveFill: true,

                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            // boxShadows: [
                            //   BoxShadow(
                            //     offset: Offset(0, 1),
                            //     color: Colors.black12,
                            //     blurRadius: 10,
                            //   )
                            // ],
                            onCompleted: (v) {
                              print("Completed");
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        hasError ? "Please fill up all the cells properly" : "",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Didn't receive the code? ",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                          children: [
                            TextSpan(
                                text: " RESEND",
                                recognizer: onTapRecognizer,
                                style: TextStyle(
                                    color: Color(0xffFC6C26),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 30),
                      child: ButtonTheme(
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'resetPassword');
                            formKey.currentState.validate();
                            // conditions for validating
                            if (currentText.length != 4 ||
                                currentText != "magaa") {
                              errorController.add(ErrorAnimationType
                                  .shake); // Triggering error shake animation
                              setState(() {
                                hasError = false;
                              });
                            } else {
                              setState(() {
                                hasError = true;
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Delete "),
                                  duration: const Duration(seconds: 2),
                                  backgroundColor: Colors.grey.withOpacity(.9),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                    textColor: Colors.white,
                                  ),
                                ));
                              });
                            }
                          },
                          child: Center(
                              child: Text(
                            "VERIFY".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffFC6C26),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                offset: Offset(1, -2),
                                blurRadius: 5),
                            BoxShadow(
                                color: Colors.green.shade200,
                                offset: Offset(-1, 2),
                                blurRadius: 5)
                          ]),
                    ),
                    // SizedBox(
                    //   height: 1,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     FlatButton(
                    //       child: Text("Clear"),
                    //       onPressed: () {
                    //         textEditingController.clear();
                    //       },
                    //     ),
                    //     FlatButton(
                    //       child: Text("Set Text"),
                    //       onPressed: () {
                    //         textEditingController.text = "123456";
                    //       },
                    //     ),
                    //   ],
                    // )
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
