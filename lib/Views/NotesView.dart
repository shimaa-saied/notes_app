import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/AddNoteButtonSheet.dart';
import '../Widget/NotesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20),),
              context: context, builder: (context){
            return Addnotebuttonsheet();
          });
        },child: Icon(Icons.add),),
      body:  const Notesviewbody(),
    );
  }
}
