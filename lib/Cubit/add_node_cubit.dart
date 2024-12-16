



import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Models/NodeModel.dart';
part  'add_node_state.dart';

class AddnodeCubit extends Cubit <AddNodesState>{
  AddnodeCubit():super(AddNodeInitial());



  addNode(Nodemodel node ) async {
    emit (AddNodeLoading());
  try {
    var nodesbox =  Hive.box<Nodemodel>('nodes');
    emit (AddNodeSuccess());

    await nodesbox.add(node);
  }  catch (e) {
    AddNodeFailure(e.toString());

  }

  }


}