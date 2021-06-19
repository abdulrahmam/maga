import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maga/modules/cart_module.dart';
import 'package:maga/shared/compones/widgets/filter_bottom_sheet.dart';
import 'package:maga/shared/compones/widgets/filter_icon.dart';

class Search_Box_widget extends StatefulWidget {
  double width;
  Search_Box_widget({this.width});
  @override
  _Search_Box_widgetState createState() => _Search_Box_widgetState();
}

class _Search_Box_widgetState extends State<Search_Box_widget> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Container(
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              onChanged: (value) {
                ///Search value
              },
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search',
                  // suffixIcon: ,

                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.only(top: 16)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
