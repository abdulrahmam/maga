import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Cart_Shoping extends StatelessWidget {
  const Cart_Shoping({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 45,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20)),

                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
                color: Colors.grey,
              ),
            ),
            // if (cartNumer != 0)

            Badge(
              toAnimate: true,
              shape: BadgeShape.circle,
              badgeColor: Colors.red,
              animationType: BadgeAnimationType.slide,
              borderRadius: BorderRadius.circular(8),
              position: BadgePosition.topStart(
                top: 8,
                start: 15,
              ),
              badgeContent: Text('5', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
