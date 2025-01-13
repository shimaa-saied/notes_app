import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/DisplayNode/display_node_cubit.dart';
import '../Models/NodeModel.dart';
import '../Widget/CustomNodeItem.dart';

class Searchview extends StatefulWidget {
  const Searchview({super.key});

  @override
  State<Searchview> createState() => _SearchviewState();
}

class _SearchviewState extends State<Searchview> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => displayCubit()..fetchallnodes(),
      child: BlocConsumer<displayCubit, diaplaynodeState>(
        builder: (BuildContext context, state) {
          List<Nodemodel> notes=BlocProvider.of<displayCubit>(context).notes!;

          return Scaffold(
              appBar: AppBar(
                title: const Text('Search title'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    CupertinoSearchTextField(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      onSubmitted: (value) {
                        BlocProvider.of<displayCubit>(context).searchnode(value);
                      },
                    ),

                    SizedBox(
                      height:   20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: notes.length,
                        itemBuilder: (context, index) {
                          return Customnodeitem(note:notes[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

        listener: (BuildContext context, state) {},
      ),
    );
  }
}


