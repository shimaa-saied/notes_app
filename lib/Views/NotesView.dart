import 'package:flutter/material.dart';

import '../Widget/AddNoteButtonSheet.dart';
import '../Widget/NotesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 650,left: 30),
          child: Center(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              shape: CircleBorder(),

              onPressed: (){
                showModalBottomSheet(

                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(20),),
                    context: context, builder: (context){
                  return Addnotebuttonsheet();
                });
              },child: Icon(Icons.add,color: Colors.black,),),
          ),
        ),
        body:  const Notesviewbody(),

    );
  }
}
