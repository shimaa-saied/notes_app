import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomTextField.dart';

class Addnotebuttonsheet extends StatelessWidget {
  const Addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical:10),
        child: Column(
          children: [
            SizedBox(height: 32,),
            Customtextfield(text: 'Title',maxlines: 1,),
            SizedBox(height: 10,),
            Customtextfield(text: 'Content',maxlines: 5,),

          ],
        ),
      )
    ;
  }
}