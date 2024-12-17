import 'package:flutter/material.dart';


import '../Widget/CustomAppBar.dart';
import '../Widget/CustomTextField.dart';


class Editnodeview extends StatelessWidget {
  const Editnodeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: const Column(
          children: [
            SizedBox(height: 50,),
            Customappbar(text: 'Edit Notes', icon:Icons.check,),
            SizedBox(height: 15),
            Customtextfield(text: 'Title',maxlines: 1,),
            SizedBox(height: 15,),
            Customtextfield(text: 'Content',maxlines: 5,),


          ],
        ),
      ),
    );
  }
}
