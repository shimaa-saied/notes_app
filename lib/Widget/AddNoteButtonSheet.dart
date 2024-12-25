import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/add_node_cubit.dart';
import 'AddnodeForm.dart';


class Addnotebuttonsheet extends StatelessWidget {
  const Addnotebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return
     BlocProvider(create: (context)=>AddnodeCubit(),// avalible all screens
       child:   BlocConsumer< AddnodeCubit ,AddNodesState>(


                   listener: ( context,  state) {
                     if(state is AddNodeFailure ){
                       print('failied ${state.errormessage}');

                     }if(state is AddNodeSuccess ){
                       Navigator.pop(context);


                     }},
                         builder: (context,  state) {
                          return  AbsorbPointer(
                            absorbing:state is AddNodeLoading ? true : false  ,
                            child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 18.0,vertical:10),
                                  child: SingleChildScrollView(child: Addnodeform()),
                                ),
                          );
                          },
           ),


     );
  }
}