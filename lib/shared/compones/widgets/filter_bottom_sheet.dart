import 'package:maga/shared/compones/widgets/filterbutton.dart';
import 'package:maga/shared/compones/widgets/slider_filter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

void draggleSheet([BuildContext context, bool pressAttention = false]) {
  showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  //
                  Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  IconButton(
                      iconSize: 30,
                      color: Colors.grey,
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterButton(
                  name: 'Burger',
                ),
                // SizedBox(
                //   width: 30,
                // ),
                FilterButton(
                  name: 'Pizaa',
                ),

                FilterButton(
                  name: 'Sushi',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterButton(
                  name: 'Steak',
                ),
                FilterButton(
                  name: 'Pasta',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SliderFilter(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffFF4500),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 110, right: 110),
                shadowColor:
                    pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              child: Text(
                'Apply Filters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Clear Filter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
