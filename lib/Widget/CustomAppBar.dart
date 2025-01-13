
import 'package:flutter/material.dart';

import 'CustomSearch.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.text, required this.icon, this.onpressed});

  final String text;
  final IconData icon;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(text,style: const TextStyle(
          fontSize: 30
        ),)
        ,const Spacer(flex: 1),
        Customsearch(
          onpressed: onpressed,
            icon:icon),
      ],
    );
  }
}
