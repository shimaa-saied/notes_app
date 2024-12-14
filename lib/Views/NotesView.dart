import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/NotesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Notesviewbody(),
    );
  }
}
