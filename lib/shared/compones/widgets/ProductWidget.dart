import 'package:flutter/material.dart';
import 'package:maga/modules/ItemDetails_module.dart';
import 'package:maga/modules/Sign_up_module.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:maga/models/model_data.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProductWidget extends StatelessWidget {
  String name;
  String image;

  double price;
  bool favorite;
  ProductWidget({this.item, this.name, this.image, this.price, this.favorite});
  Item item;
  int index = 0;
  bool isloading = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetails(
              itemname: item.name,
              itemfavorite: item.favorite,
              itemimage: item.image,
              itemprice: item.price,
            ),
          ),
        );
      },
      child: Hero(
        tag: 'image${item.image}',
        transitionOnUserGestures: true,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child:
              // isloading
              //     ? SpinKitFadingCircle(
              //         color: Color(0xffFF4500),
              //       )
              //     :
              Container(
            height: 120.0,
            width: 25.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: Material(
              type: MaterialType.transparency,
              child: Expanded(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                item.name,
                                style: TextStyle(
                                  // fontFamily: 'Lobster-Regular',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: FavoriteButton(
                                  isFavorite: item.favorite,
                                  iconSize: 40,
                                  iconColor: Color(0xffFC6C26),
                                  valueChanged: () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color(0xffFC6C26),
                                // color: Colors.grey.withOpacity(1),
                              ),
                              child: Expanded(
                                child: Center(
                                  child: Text(
                                    "\$${item.price}",
                                    style: TextStyle(
                                      // fontFamily: 'Lobster-Regular',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
