import 'package:flutter/material.dart';

class Customsearch extends StatelessWidget {
  const Customsearch({super.key, required this.icon, this.onpressed});
final IconData icon;
final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(16)),
      child: Center(child: IconButton(
          onPressed: onpressed,
          icon:Icon(icon,size: 27)
          )),
    );
  }
}
