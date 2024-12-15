import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NotesListView.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: const Column(
        children: [
          SizedBox(height: 50,),
          Customappbar(text: 'Notes App', icon: Icons.search,),
          SizedBox(height: 15),
          Noteslistview(),
          SizedBox(height: 15),


        ],
      ),
    );
  }
}
