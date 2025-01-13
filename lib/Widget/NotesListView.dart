import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/DisplayNode/display_node_cubit.dart';
import 'package:notes_app/Models/NodeModel.dart';

import 'CustomNodeItem.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <displayCubit,diaplaynodeState>(
      builder: (context,state){

        final notes = BlocProvider.of<displayCubit>(context).notes;

      if (notes == null || notes.isEmpty ) {
        return  Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(

            children: [
                Image.asset('assets/rafiki.png',height: 200,width: 400,),
               Text(' Create your first note !',style: TextStyle(fontSize: 20),)
              ],
            ),
        )   ;
      }



      else{

        List<Nodemodel> notes=BlocProvider.of<displayCubit>(context).notes!;

      return Expanded(
        child: ListView.builder(
          itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context,index){
         return  Customnodeitem(note: notes[index]) ;
        }),
      );};

      }
    );
  }}

