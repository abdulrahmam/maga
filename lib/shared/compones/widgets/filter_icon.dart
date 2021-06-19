import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maga/shared/compones/widgets/filter_bottom_sheet.dart';

class FilterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 8,
      ),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          // color: Colors.red,
          color: Color(0xffFC6C26),

          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: IconButton(

              // icon: Icon(LineIcons.filter),
              icon: Image.asset(
                "assets/image/fun.png",
                color: Colors.white,
              ),
              onPressed: () {
                print('aa');
                draggleSheet(context);
              }),
        ),
      ),
    );
  }
}
