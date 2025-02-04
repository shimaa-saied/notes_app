import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/AddNode/add_node_cubit.dart';

class colorList extends StatefulWidget {
  colorList(  );

  @override
  State<colorList> createState() => _colorListState();
}

class _colorListState extends State<colorList> {
  int currentindex =0;

  List<Color> colorlist=[
    Color(0xffFEC5FF),
    Color(0xffFDF3BF),
    Color(0xff96F4F4),
    Color(0xffFBBECF),
    Color(0xffC5CBFF),
    Color(0xffC4FFCA),



  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorlist.length,
          itemBuilder: (context,index){
            return GestureDetector(
                onTap: (){
                  currentindex=index;
                  BlocProvider.of<AddnodeCubit>(context).color =colorlist[index];


                  setState(() {
                  });
                },
                child: coloritem(isActive: currentindex==index, color: colorlist[index]));
          }),
    );
  }
}



class coloritem extends StatelessWidget {
  coloritem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: isActive ?          CircleAvatar(
        backgroundColor:  Colors.blue,
        radius: 35,
        child:CircleAvatar(
          backgroundColor: color,
          radius: 30,
        ) ,
      ):CircleAvatar(
        backgroundColor:color,
        radius: 30,
      ) ,
    );
  }
}
