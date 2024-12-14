import 'package:flutter/cupertino.dart';

import 'CustomSearch.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes App',style: TextStyle(
          fontSize: 30
        ),)
        ,Spacer(flex: 1),
        Customsearch(),
      ],
    );
  }
}
