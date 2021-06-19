import 'package:flutter/material.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/models/model_data.dart';
import 'package:maga/shared/compones/widgets/cart_product.dart';

class Cartpage extends StatefulWidget {
  static const String cartpage = 'cartpage';

  int numofItem = 1;
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  final but = burger.map((e) => CartProduct()).toList();
  Item item;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 15,
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
                  width: 100,
                ),
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                itemCount: but.length,
                itemBuilder: (context, index) {
                  // var item = burger[index];
                  return Dismissible(
                      direction: DismissDirection.endToStart,
                      key: ValueKey(but),
                      child: CartProduct(
                        cardimage: burger[index].image,
                        cardname: burger[index].name,
                        cardprice: burger[index].price,
                      ),
                      onDismissed: (direction) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Delete ${burger[index].name}"),
                          duration: const Duration(seconds: 2),
                          backgroundColor: Colors.grey.withOpacity(.9),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                            textColor: Colors.white,
                          ),
                        ));
                      },
                      background: Container(
                        margin: EdgeInsets.only(
                            left: 5, right: 0, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: AlignmentDirectional.centerEnd,
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 40,
                        ),
                      ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Text(
                    'Delivery ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    margin:
                        EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffFF4500),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF4500),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                  shadowColor: Color(0xffFF4500),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      r'Total: $350',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
