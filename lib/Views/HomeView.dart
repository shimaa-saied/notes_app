import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NotesView.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

          children: [

        Stack(children: [
          Positioned(
            child: Image.asset('assets/WallPolygon.png',fit: BoxFit.fill,
              height: 450,
              width: double.infinity,

            ),
          ),

          Positioned(
            top: 70,
            right: 0,
            left: 0,
            bottom: 70,
            child:
            Image.asset('assets/Illustration.png',fit: BoxFit.contain,
              height: 50,
              width: 100,
            ),
          ),
        ]),

      SizedBox(
        height: 50,
      ),

      Text('Create free notes ',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.bold),),

            SizedBox(
              height: 20,
            ),

            Text('Capture your thoughts and ideas here.\n Stay organized and productive by keeping \n your notes all in one place.',   textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey,fontSize: 15,)),

            SizedBox(
              height: 30,
            ),


           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return  Notesview();
               }));
             },
             child: Container(
               height: 40,
               width: 130,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Text('Get Started',style: TextStyle(color: Colors.black,fontSize: 16,)),
                     ),
                     Icon(Icons.arrow_right_alt,color: Colors.black,size: 30,)
                      ],
                 ),

             ),
           )
      ]
      ),

    );
  }
}
