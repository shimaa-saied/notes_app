import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:Colors.white ,
          borderRadius: BorderRadius.circular(16)),
      child: Center(child: Text('Add',style: TextStyle(color:Colors.black ),)),
      height: 50,
      width: MediaQuery.of (context).size.width,// take width of screen
    );
  }
}
