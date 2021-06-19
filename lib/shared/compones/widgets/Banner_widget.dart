import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:maga/models/Product_Data.dart';

class Banner_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      width: double.infinity,
      child: Carousel(
        dotColor: Color(0XFF292F38),
        boxFit: BoxFit.cover,
        images: ban
            .map(
              (e) => Image.asset(
                e.image,
                fit: BoxFit.cover,
              ),
            )
            .toList(),
        dotSize: 5,
        dotSpacing: 15,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 5.0,
      ),
    );
  }
}
