import 'package:flutter/material.dart';
import 'package:maga/modules/ItemDetails_module.dart';
import 'package:maga/models/Product_Data.dart';
import 'package:maga/models/model_data.dart';
import 'package:maga/shared/compones/widgets/ProductWidget.dart';

class GridleWidget extends StatelessWidget {
  Function itemBuilder;
  int itemCount;
  Function press;
  Item item;

  GridleWidget({
    this.itemBuilder,
    this.itemCount,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: GridView.builder(
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          childAspectRatio: 1 / 1.3,
          // crossAxisSpacing: 5,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
