import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.text,this.maxlines=1,this.onsaved, this.onchanged});
final String text;
final int maxlines;
final void Function(String?)?onsaved;
  final void Function(String?)?onchanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),

      ),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 16, //
        ),

        onChanged: onchanged,
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
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.black),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),


      ),
    );
  }
}
