import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/SimpleBlocObserver.dart';
import 'Cubit/add_node_cubit.dart';
import 'Models/NodeModel.dart';
import 'Views/NotesView.dart';

void main() async{
  await Hive.initFlutter();

Bloc.observer=SimpleBlocObserver();

  await Hive.openBox('nodes');
  Hive.registerAdapter(NodemodelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddnodeCubit())// avalible all screens
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Notesview() ,
      ),
    );
  }
}
