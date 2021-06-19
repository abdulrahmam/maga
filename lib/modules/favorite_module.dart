import 'package:flutter/material.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/shared/compones/widgets/ProductWidget.dart';
import 'package:maga/shared/compones/widgets/Search_Box_widget.dart';

class FavoritePage extends StatelessWidget {
  static const String favoritePage = 'favoritePage';

  Function itemBuilder;
  int itemCount;
  Function press;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Search_Box_widget(
              width: 330,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
              ),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'My Favorite',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: burger.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    childAspectRatio: 1 / 1.3,
                    // crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return ProductWidget(
                      item: burger[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
