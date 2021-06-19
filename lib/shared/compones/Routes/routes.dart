import 'package:flutter/material.dart';
import 'package:maga/modules/ItemDetails_module.dart';
import 'package:maga/modules/Splash_module.dart';
import 'package:maga/modules/cart_module.dart';
import 'package:maga/modules/favorite_module.dart';
import 'package:maga/modules/forgot_password_module.dart';
import 'package:maga/modules/Sign_up_module.dart';
import 'package:flutter/widgets.dart';
import 'package:maga/modules/login_screen_module.dart';
import 'package:maga/modules/notification_module.dart';
import 'package:maga/modules/profile_Page_module.dart';
import 'package:maga/modules/resetpassword_module.dart';
import 'package:maga/modules/verify_phone_number_module.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.splash: (context) => Splash(),
  Login.login: (context) => Login(),
  Forgotpassword.forgotpassword: (context) => Forgotpassword(),
  SignIn.signIn: (context) => SignIn(),
  ItemDetails.itemDetails: (context) => ItemDetails(),
  NotifcationPage.notifcation: (context) => NotifcationPage(),
  Cartpage.cartpage: (context) => Cartpage(),
  VerifyPassword.verifyPassword: (context) => VerifyPassword(),
  FavoritePage.favoritePage: (context) => FavoritePage(),
  Profile.profile: (context) => Profile(),
  ResetPassword.resetPassword: (context) => ResetPassword(),
};
