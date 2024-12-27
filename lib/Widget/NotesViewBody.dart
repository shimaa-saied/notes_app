import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/DisplayNode/display_node_cubit.dart';
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
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
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
