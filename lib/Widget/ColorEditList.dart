
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ColorList.dart';

class coloreditList extends StatefulWidget {
  const coloreditList({super.key, required this.note}  );
  final note;
  @override
  State<coloreditList> createState() => _coloreditListState();
}



class _coloreditListState extends State<coloreditList> {

  late int currentindex ;

  @override
  void initState() {
    super.initState();
    currentindex = colorlist.indexWhere((color) => color.value == widget.note.color);
  }

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
      height: 35*3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorlist.length,
          itemBuilder: (context,index){
            return GestureDetector(
                onTap: (){
                  currentindex=index;
                  widget.note.color= colorlist[index].value;
                  setState(() {
                  });
                },
                child: coloritem(isActive: currentindex==index, color: colorlist[index]));
          }),
    );
  }
}

