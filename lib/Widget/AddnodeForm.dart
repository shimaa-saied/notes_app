import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Cubit/AddNode/add_node_cubit.dart';
import 'package:notes_app/Models/NodeModel.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';

class Addnodeform extends StatefulWidget {
  const Addnodeform({super.key});

  @override
  State<Addnodeform> createState() => _AddnodeformState();
}

class _AddnodeformState extends State<Addnodeform> {
  final GlobalKey<FormState> formkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;// show error if insert any think error in operation of validation
String ? title,subtitle; //input
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
         const  SizedBox(height: 32,),
          Customtextfield(
            onsaved: (value){
              title=value;
            },
            text: 'Title',maxlines: 1,),
          const SizedBox(height: 15,),
          Customtextfield(
            onsaved: (value){
              subtitle=value;
            },

            text: 'Content',maxlines: 5,),
          const SizedBox(height: 30,),

          BlocBuilder<AddnodeCubit,AddNodesState>(
             builder:(context,state){

            return Custombutton(
              isloading:  state is AddNodeLoading ? true : false  ,
              ontap: (){
                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();

                var currentdate=DateTime.now();
                var formattedcurrentdate = DateFormat.yMd().format(currentdate);
                 var nodemodel = Nodemodel(title: title!, subtitle: subtitle!,
                     date: formattedcurrentdate,
                     color: Colors.blue.value);
                  BlocProvider.of<AddnodeCubit>(context).addNode(nodemodel);
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
            
                  });
                }
              },
            );}
          ),
          const SizedBox(height: 15,),
      
        ],
      ),
    );
  }
}
