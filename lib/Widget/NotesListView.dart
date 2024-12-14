import 'package:flutter/cupertino.dart';

import 'CustomNodeItem.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context,index){
       return const Customnodeitem() ;
      }),
    );
  }
}
