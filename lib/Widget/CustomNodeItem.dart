
import 'package:flutter/material.dart';
import 'package:notes_app/Views/EditNodeView.dart';

class Customnodeitem extends StatelessWidget {
  const Customnodeitem({super.key});

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
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(16)),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text('flutter tips',style: TextStyle(color: Colors.black,fontSize: 35),),
                subtitle: const Text('build with shimaa saied',style: TextStyle(color: Colors.black,fontSize: 20)),
                trailing: IconButton(onPressed: (){},
                    icon: const Icon(Icons.delete, size: 40,color: Colors.black,),),
              ),
              const Padding(
                padding:  EdgeInsets.only(right: 18.0),
                child: Text('May21 ,2025',style: TextStyle(color: Colors.black,fontSize: 15),),
              ),


            ],
          )
        ),
      ),
    );
  }
}