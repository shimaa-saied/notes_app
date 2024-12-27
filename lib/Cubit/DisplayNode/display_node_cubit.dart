import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Models/NodeModel.dart';

part  'display_node_state.dart';

class displayCubit extends Cubit <diaplaynodeState>{
  displayCubit():super(diaplaynodeInitial());


  List<Nodemodel>?  notes;
  fetchallnodes()  {

      var nodesBox =  Hive.box<Nodemodel>('nodes');
       notes =nodesBox.values.toList();

  emit(diaplaynodeSuccess());
  }


}