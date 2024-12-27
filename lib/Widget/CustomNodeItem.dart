
import 'package:flutter/material.dart';
import 'package:notes_app/Models/NodeModel.dart';
import 'package:notes_app/Views/EditNodeView.dart';

class Customnodeitem extends StatelessWidget {
  const Customnodeitem({super.key, required this.note});

  final Nodemodel note;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const Editnodeview();
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
                title:  Text(note.title,style: TextStyle(color: Colors.black,fontSize: 35),),
                subtitle:  Text(note.subtitle,style: TextStyle(color: Colors.black,fontSize: 20)),
                trailing: IconButton(onPressed: (){},
                    icon:  Icon(Icons.delete, size: 40,color: Colors.black,),),
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