import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  String name;

  FilterButton({this.name});
  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
        shadowColor: pressAttention ? Color(0xffFF4500) : Color(0xffE6E5E7),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
      child: Text(
        widget.name,
        style: TextStyle(
          fontSize: 20,
          // height: 4,
          fontWeight: FontWeight.bold,
          color: pressAttention ? Colors.white : Colors.black38,
        ),
      ),
      onPressed: () => setState(() => pressAttention = !pressAttention),
    );
  }
}
