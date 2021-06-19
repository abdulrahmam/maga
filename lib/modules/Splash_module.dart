import 'package:flutter/material.dart';
import 'package:maga/modules/login_screen_module.dart';
// import 'package:maga/Screens/Login/login_screen.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/shared/compones/widgets/slpashwiget.dart';

class Splash extends StatefulWidget {
  static const String splash = 'Splash';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      child: Text(
                        'Maga',
                        style: TextStyle(
                          fontSize: 60,
                          color: Color(0xff24292E),
                          fontFamily: 'Lobster-Regular',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: banner.length,
              itemBuilder: (context, index) => SplashWiget(
                image: banner[index]["image"],
                text: banner[index]["text"],
              ),
            ),
          ),
          Expanded(
            // flex: 3,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                banner.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          if (currentPage == 2)
            Padding(
              padding: EdgeInsets.all(25),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Login");
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Color(0xff24292E),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Lobster-Regular',
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 3),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0XFF292F38) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
