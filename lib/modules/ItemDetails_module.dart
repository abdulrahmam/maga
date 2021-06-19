import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

import 'package:maga/models/model_data.dart';

class ItemDetails extends StatefulWidget {
  static const itemDetails = 'itemDetails';
  String itemname;
  String itemimage;
  double itemprice;
  bool itemfavorite;
  int numofItem = 1;
  Item item;

  int index = 0;
  ItemDetails(
      {this.itemname,
      this.itemimage,
      this.itemfavorite,
      this.itemprice,
      this.item});
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'image${widget.itemimage}',
                      transitionOnUserGestures: true,
                      child: Container(
                        height: 600.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                widget.itemimage,
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 5),
                                // changes position of shadow
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 70,
                        ),
                        child: IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            icon: Icon(Icons.arrow_back_ios_rounded),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, right: 20),
                        child: FavoriteButton(
                            isFavorite: widget.itemfavorite,
                            iconSize: 50,
                            iconColor: Color(0xffFC6C26),
                            valueChanged: () {}),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 580),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 5,
                              ),
                              child: Text(
                                widget.itemname,
                                // 'kkkk',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.47,
                            ),
                            Text(
                              '\$${widget.itemprice}',
                              // '22',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buildOutLineButton(
                                    icon: Icons.remove,
                                    press: () {
                                      setState(() {
                                        widget.numofItem--;
                                      });
                                    },
                                  ),
                                  Text(
                                    widget.numofItem.toString().padLeft(2, '0'),
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  buildOutLineButton(
                                    icon: Icons.add,
                                    press: () {
                                      setState(() {
                                        widget.numofItem++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 60,
                                width: 5,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    color: Color(0xffFC6C26),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'Add to Cart ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

SizedBox buildOutLineButton({IconData icon, Function press}) {
  return SizedBox(
    width: 35,
    height: 32,
    child: Container(
      decoration: BoxDecoration(
        // color: Color(0xffFC6C26),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        // color: Color(0xffFC6C26),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    ),
  );
}
// hild: Container(
//
//       child: Icon(
//         icon,
//         color: Colors.white,
//       ),
//     ),
