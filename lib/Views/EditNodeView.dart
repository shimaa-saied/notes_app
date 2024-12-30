import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/DisplayNode/display_node_cubit.dart';
import 'package:notes_app/Models/NodeModel.dart';
import '../Widget/ColorEditList.dart';
import '../Widget/CustomAppBar.dart';
import '../Widget/CustomTextField.dart';


class Editnodeview extends StatefulWidget {
  const Editnodeview({super.key, required this.note});

  final Nodemodel note;

  @override
  State<Editnodeview> createState() => _EditnodeviewState();
}

class _EditnodeviewState extends State<Editnodeview> {
   String? title,content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child:  Column(
          children: [
            SizedBox(height: 50,),
            Customappbar(
              onpressed: (){
                widget.note.title =title ?? widget.note.title;
                widget.note.subtitle= content??  widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<displayCubit>(context).fetchallnodes();//refresh
                Navigator.pop(context);
              },
              text: 'Edit Notes', icon:Icons.check,),
            SizedBox(height: 15),
            Customtextfield(
              onchanged:(value){
                title=value;
              } ,
              text: widget.note.title,maxlines: 1,),
            SizedBox(
              height: 15,),
            Customtextfield(
              onchanged:(value){
                content=value;
              },
              text: widget.note.subtitle,maxlines: 5,),
            SizedBox(
              height: 15,),
            coloreditList(note: widget.note)
          ],
        ),
      ),
    );
  }
}



