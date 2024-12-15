import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customsearch extends StatelessWidget {
  const Customsearch({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(16)),
      child: Center(child: Icon(icon,size: 27)),
    );
  }
}
