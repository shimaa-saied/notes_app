import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.ontap, this.isloading=false});
final void Function()? ontap;
final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color:Colors.grey[200],
            borderRadius: BorderRadius.circular(16)),
       height: 50,
        width: MediaQuery.of (context).size.width,
        child:  Center(
            child: isloading ? SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ):
            Text('Add',style: TextStyle(
            color:Colors.black,fontSize: 20 ),)),
        // take width of screen
      ),
    );
  }
}
