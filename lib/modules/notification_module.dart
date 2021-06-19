import 'package:flutter/material.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/shared/compones/widgets/cart_product.dart';
import 'package:maga/shared/compones/widgets/notifcation_card.dart';

class NotifcationPage extends StatelessWidget {
  static const notifcation = 'notifcation';

  @override
  Widget build(BuildContext context, [int index = 3]) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  width: 85,
                ),
                Text(
                  'Notifcation',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: burger
                  .map((e) => NotifcationCard(
                        notimage: burger[index].image,
                        notname: burger[index].name,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
