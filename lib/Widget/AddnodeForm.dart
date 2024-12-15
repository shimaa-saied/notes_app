import 'package:flutter/cupertino.dart';

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
          const SizedBox(height: 50,),
          Custombutton(
            ontap: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
      
        ],
      ),
    );
  }
}
