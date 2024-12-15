import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:Colors.white ,
          borderRadius: BorderRadius.circular(16)),
     height: 50,
      width: MediaQuery.of (context).size.width,
      child: const Center(child: Text('Add',style: TextStyle(color:Colors.black ),)),
      // take width of screen
    );
  }
}
