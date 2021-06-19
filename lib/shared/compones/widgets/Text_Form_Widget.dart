import 'package:flutter/material.dart';

class Text_Form_Widget extends StatelessWidget {
  String lableText;
  String hintText;
  Widget prefixIcon;
  Text_Form_Widget({this.lableText, this.hintText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: lableText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).cardColor),
            borderRadius: BorderRadius.circular(10),
            gapPadding: 10,
          ),
        ),
      ),
    );
  }
}
