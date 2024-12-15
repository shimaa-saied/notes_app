import 'package:flutter/material.dart';
import 'AddnodeForm.dart';
class Addnotebuttonsheet extends StatelessWidget {
  const Addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return
      const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0,vertical:10),
        child: SingleChildScrollView(
            child: Addnodeform()
        ),
      )
    ;
  }
}