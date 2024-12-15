import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.text,this.maxlines=1});
final String text;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines:maxlines ,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: text,
      ),


    );
  }
}
