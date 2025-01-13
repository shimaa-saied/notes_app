import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/DisplayNode/display_node_cubit.dart';
import '../Views/searchView.dart';
import 'CustomAppBar.dart';
import 'NotesListView.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override


  void initState() {
   BlocProvider.of<displayCubit>(context).fetchallnodes();
    super.initState();
  }




  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [

          SizedBox(height: 50,),
          Customappbar(
            text: 'My Notes',
            icon: Icons.search,
            onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  Searchview();
              }));
             },

          ),
          SizedBox(height: 15),
          Noteslistview(),
          SizedBox(height: 15),


        ],
      ),
    );
  }
}
