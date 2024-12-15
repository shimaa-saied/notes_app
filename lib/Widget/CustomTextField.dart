import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.text,this.maxlines=1,this.onsaved});
final String text;
final int maxlines;
final void Function(String?)?onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value){
        if(value?.isEmpty?? true){
          return 'field is required';

        }else{
          return null;
        }
      },
      maxLines:maxlines ,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        hintText: text,
      ),


    );
  }
}
