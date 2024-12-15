import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Models/NodeModel.dart';
import 'Views/NotesView.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('nodes');
  Hive.registerAdapter(NodemodelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Notesview() ,
    );
  }
}
