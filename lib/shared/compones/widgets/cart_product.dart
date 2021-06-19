import 'package:maga/models/model_data.dart';
import 'package:maga/modules/ItemDetails_module.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  int numofItem = 0;
  String cardname;
  String cardimage;
  Item item;

  int index = 0;
  double cardprice;
  CartProduct({this.cardname, this.cardprice, this.cardimage});

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(1),
        bottomLeft: Radius.circular(1),
      )),
      margin: EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
      elevation: 3,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.cardimage),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              widget.cardname,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "\$${widget.cardname.toString()}",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffFC6C26),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55, top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildOutLineButton(
                icon: Icons.remove,
                press: () {
                  setState(() {
                    widget.numofItem--;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  widget.numofItem.toString(),
                  style: TextStyle(
                    fontSize: 30,
                  ),
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
      ]),
    );
  }
}
