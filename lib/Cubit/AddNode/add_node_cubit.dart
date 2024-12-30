



import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Models/NodeModel.dart';
part  'add_node_state.dart';

class AddnodeCubit extends Cubit <AddNodesState>{
  AddnodeCubit():super(AddNodeInitial());


Color  color= Color(0xffffffff);
  addNode(Nodemodel node ) async {
    node.color=color.value;
    emit (AddNodeLoading());
  try {
    var nodesbox =  Hive.box<Nodemodel>('nodes');
    await nodesbox.add(node);
    emit (AddNodeSuccess());
  }  catch (e) {
    emit (AddNodeFailure(e.toString()));

  }

  }


}