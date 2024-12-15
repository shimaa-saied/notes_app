import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.ontap});
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(16)),
       height: 50,
        width: MediaQuery.of (context).size.width,
        child: const Center(child: Text('Add',style: TextStyle(
            color:Colors.black ),)),
        // take width of screen
      ),
    );
  }
}
