import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/SimpleBlocObserver.dart';
import 'Cubit/DisplayNode/display_node_cubit.dart';
import 'Models/NodeModel.dart';
import 'Views/NotesView.dart';

void main() async{
  await Hive.initFlutter();

Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(NodemodelAdapter());//1 regester
  await Hive.openBox<Nodemodel>('nodes');//2 open box

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>displayCubit(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Notesview() ,
    ),);

  }
}
