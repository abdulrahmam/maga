import 'package:flutter/material.dart';
import 'package:maga/modules/ItemDetails_module.dart';
import 'package:maga/layout/foodPage.dart';
import 'package:maga/modules/login_screen_module.dart';
import 'package:maga/layout/HomePage%20.dart';
import 'package:maga/modules/Splash_module.dart';
import 'package:maga/modules/forgot_password_module.dart';
import 'package:maga/modules/Sign_up_module.dart';
import 'package:maga/modules/Splash_module.dart';
import 'package:maga/modules/Sign_up_module.dart';
import 'package:maga/shared/compones/Routes/routes.dart';

import 'layout/foodPage.dart';
import 'modules/verify_phone_number_module.dart';
import 'shared/compones/widgets/filterbutton.dart';

// import 'Screens/Login/login_screen.dart';
// import 'Screens/Profile_Page/profile_Page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maga',
      // home: ResetPassword(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      initialRoute: 'Splash',
      routes: routes,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
