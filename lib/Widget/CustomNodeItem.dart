
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/DisplayNode/display_node_cubit.dart';
import 'package:notes_app/Models/NodeModel.dart';
import 'package:notes_app/Views/EditNodeView.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Customnodeitem extends StatelessWidget {
  const Customnodeitem({super.key, required this.note});

  final Nodemodel note;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  Editnodeview(note:note);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 8),
          decoration: BoxDecoration(
              color:Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(note.title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
                subtitle:  Text(note.subtitle,style: TextStyle(color: Colors.black,fontSize: 15)),
                trailing: IconButton(
                  onPressed: (){
                    Alert(
                      context: context,
                      desc: "Are you sure you want to delete?",
                      style: AlertStyle(
                        descStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),  // تخصيص لون العنوان
                          //
                      ),


                      buttons: [
                        DialogButton(
                          child: Text(
                            "yes",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          onPressed: () {
                            note.delete();
                            Navigator.pop(context);
                            BlocProvider.of<displayCubit>(context).fetchallnodes();
                            //rebuild ui so using state emit

                          },
                          color: Colors.green,
                        ),
                        DialogButton(
                          child: Text(
                            "NO",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                         color: Colors.red,
                        )
                      ],
                    ).show();

                   },

                    icon:  Icon(Icons.delete, size: 25,color: Colors.black),),
              ),

              Padding(
                padding:  EdgeInsets.only(right: 18.0),
                child: Text(note.date,style: TextStyle(color: Colors.black,fontSize: 15),),
              ),


            ],
          )
        ),
      ),
    );
  }
}