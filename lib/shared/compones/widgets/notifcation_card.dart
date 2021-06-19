import 'package:flutter/material.dart';
import 'package:maga/models/Product_Data.dart';

class NotifcationCard extends StatefulWidget {
  String notname;
  String notimage;
  NotifcationCard({this.notname, this.notimage});

  @override
  _NotifcationCardState createState() => _NotifcationCardState();
}

class _NotifcationCardState extends State<NotifcationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 700,
          child: ListView.builder(
              itemCount: burger.length,
              itemBuilder: (context, index) {
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
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(burger[index].image),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              burger[index].name,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' your order on the way ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(
                            " Arrive Soon.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                );
              }),
        ));
  }
}
